
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx_descriptor {int own; unsigned int dataptr; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__* itf; } ;
struct TYPE_3__ {size_t tx_swap_desc_pos; } ;


 int DATA_BUFFER_ALIGNMENT ;
 int IFX_REG_W32_MASK (int ,int,int ) ;
 int MBOX_IGU1_IER ;
 int MBOX_IGU1_ISRC ;
 int RX_MAX_BUFFER_SIZE ;
 struct tx_descriptor* WAN_SWAP_DESC_BASE ;
 size_t WAN_SWAP_DESC_NUM ;
 struct sk_buff* alloc_skb_tx (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 TYPE_2__ g_ptm_priv_data ;
 int g_swap_desc_tasklet ;
 struct sk_buff* get_skb_pointer (unsigned int) ;
 int panic (char*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void do_swap_desc_tasklet(unsigned long arg)
{
    int budget = 32;
    volatile struct tx_descriptor *desc;
    struct sk_buff *skb;
    unsigned int byteoff;

    while ( budget-- > 0 ) {
 if ( WAN_SWAP_DESC_BASE[g_ptm_priv_data.itf[0].tx_swap_desc_pos].own )
            break;

        desc = &WAN_SWAP_DESC_BASE[g_ptm_priv_data.itf[0].tx_swap_desc_pos];
        if ( ++g_ptm_priv_data.itf[0].tx_swap_desc_pos == WAN_SWAP_DESC_NUM )
            g_ptm_priv_data.itf[0].tx_swap_desc_pos = 0;

        skb = get_skb_pointer(desc->dataptr);
        if ( skb != ((void*)0) )
            dev_kfree_skb_any(skb);

        skb = alloc_skb_tx(RX_MAX_BUFFER_SIZE);
        if ( skb == ((void*)0) )
            panic("can't allocate swap buffer for PPE firmware use\n");
        byteoff = (unsigned int)skb->data & (DATA_BUFFER_ALIGNMENT - 1);
        *(struct sk_buff **)((unsigned int)skb->data - byteoff - sizeof(struct sk_buff *)) = skb;

        desc->dataptr = (unsigned int)skb->data & 0x0FFFFFFF;
        desc->own = 1;
    }


    IFX_REG_W32_MASK(0, 16, MBOX_IGU1_ISRC);

    if ( WAN_SWAP_DESC_BASE[g_ptm_priv_data.itf[0].tx_swap_desc_pos].own ) {
        IFX_REG_W32_MASK(0, 1 << 16, MBOX_IGU1_IER);
        return;
    }

    tasklet_hi_schedule(&g_swap_desc_tasklet);
    return;
}

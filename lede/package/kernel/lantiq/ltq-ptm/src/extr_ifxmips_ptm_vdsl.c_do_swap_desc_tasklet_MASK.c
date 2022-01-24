#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tx_descriptor {int own; unsigned int dataptr; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__* itf; } ;
struct TYPE_3__ {size_t tx_swap_desc_pos; } ;

/* Variables and functions */
 int DATA_BUFFER_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_IGU1_IER ; 
 int /*<<< orphan*/  MBOX_IGU1_ISRC ; 
 int /*<<< orphan*/  RX_MAX_BUFFER_SIZE ; 
 struct tx_descriptor* WAN_SWAP_DESC_BASE ; 
 size_t WAN_SWAP_DESC_NUM ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 TYPE_2__ g_ptm_priv_data ; 
 int /*<<< orphan*/  g_swap_desc_tasklet ; 
 struct sk_buff* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long arg)
{
    int budget = 32;
    volatile struct tx_descriptor *desc;
    struct sk_buff *skb;
    unsigned int byteoff;

    while ( budget-- > 0 ) {
	if ( WAN_SWAP_DESC_BASE[g_ptm_priv_data.itf[0].tx_swap_desc_pos].own )  //  if PP32 hold descriptor
            break;

        desc = &WAN_SWAP_DESC_BASE[g_ptm_priv_data.itf[0].tx_swap_desc_pos];
        if ( ++g_ptm_priv_data.itf[0].tx_swap_desc_pos == WAN_SWAP_DESC_NUM )
            g_ptm_priv_data.itf[0].tx_swap_desc_pos = 0;

        skb = FUNC3(desc->dataptr);
        if ( skb != NULL )
            FUNC2(skb);

        skb = FUNC1(RX_MAX_BUFFER_SIZE);
        if ( skb == NULL )
            FUNC4("can't allocate swap buffer for PPE firmware use\n");
        byteoff = (unsigned int)skb->data & (DATA_BUFFER_ALIGNMENT - 1);
        *(struct sk_buff **)((unsigned int)skb->data - byteoff - sizeof(struct sk_buff *)) = skb;

        desc->dataptr = (unsigned int)skb->data & 0x0FFFFFFF;
        desc->own = 1;
    }

    //  clear interrupt
    FUNC0(0, 16, MBOX_IGU1_ISRC);
    //  no more skb to be replaced
    if ( WAN_SWAP_DESC_BASE[g_ptm_priv_data.itf[0].tx_swap_desc_pos].own ) {    //  if PP32 hold descriptor
        FUNC0(0, 1 << 16, MBOX_IGU1_IER);
        return;
    }

    FUNC5(&g_swap_desc_tasklet);
    return;
}
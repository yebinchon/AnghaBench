
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uni_cell_header {scalar_t__ pti; int vci; int vpi; } ;
struct tx_descriptor {unsigned int dataptr; int iscell; int own; int c; int sop; int eop; scalar_t__ byteoff; int datalen; int member_0; } ;
struct sk_buff {scalar_t__ data; } ;
struct atm_vcc {TYPE_1__* stats; } ;
struct TYPE_6__ {int wtx_oam; TYPE_2__* conn; int wtx_drop_oam; int wtx_err_oam; } ;
struct TYPE_5__ {struct tx_descriptor* tx_desc; struct sk_buff** tx_skb; } ;
struct TYPE_4__ {int tx; } ;


 scalar_t__ ATM_PTI_E2EF5 ;
 scalar_t__ ATM_PTI_SEGF5 ;
 int CELL_SIZE ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int adsl_led_flash () ;
 struct sk_buff* alloc_skb_tx (int ) ;
 int atomic_inc (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_cache_wback (unsigned long,int ) ;
 int find_vcc (struct atm_vcc*) ;
 scalar_t__ find_vpi (int ) ;
 scalar_t__ find_vpivci (int ,int) ;
 TYPE_3__ g_atm_priv_data ;
 int g_showtime ;
 int get_tx_desc (int) ;
 int mailbox_signal (int,int) ;
 int memcpy (scalar_t__,void*,int ) ;
 int pr_err (char*) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static int ppe_send_oam(struct atm_vcc *vcc, void *cell, int flags)
{
 int conn;
 struct uni_cell_header *uni_cell_header = (struct uni_cell_header *)cell;
 int desc_base;
 struct sk_buff *skb;
 struct tx_descriptor reg_desc = {0};

 if ( ((uni_cell_header->pti == ATM_PTI_SEGF5 || uni_cell_header->pti == ATM_PTI_E2EF5)
   && find_vpivci(uni_cell_header->vpi, uni_cell_header->vci) < 0)
   || ((uni_cell_header->vci == 0x03 || uni_cell_header->vci == 0x04)
   && find_vpi(uni_cell_header->vpi) < 0) )
 {
  g_atm_priv_data.wtx_err_oam++;
  return -EINVAL;
 }

 if ( !g_showtime ) {
  pr_err("not in showtime\n");
  g_atm_priv_data.wtx_drop_oam++;
  return -EIO;
 }

 conn = find_vcc(vcc);
 if ( conn < 0 ) {
  pr_err("FIND_VCC_FAIL\n");
  g_atm_priv_data.wtx_drop_oam++;
  return -EINVAL;
 }

 skb = alloc_skb_tx(CELL_SIZE);
 if ( skb == ((void*)0) ) {
  pr_err("ALLOC_SKB_TX_FAIL\n");
  g_atm_priv_data.wtx_drop_oam++;
  return -ENOMEM;
 }
 skb_put(skb, CELL_SIZE);
 memcpy(skb->data, cell, CELL_SIZE);

 reg_desc.dataptr = (unsigned int)skb->data >> 2;
 reg_desc.datalen = CELL_SIZE;
 reg_desc.byteoff = 0;
 reg_desc.iscell = 1;

 reg_desc.own = 1;
 reg_desc.c = 1;
 reg_desc.sop = reg_desc.eop = 1;

 desc_base = get_tx_desc(conn);
 if ( desc_base < 0 ) {
  dev_kfree_skb_any(skb);
  pr_err("ALLOC_TX_CONNECTION_FAIL\n");
  g_atm_priv_data.wtx_drop_oam++;
  return -EIO;
 }

 if ( vcc->stats )
  atomic_inc(&vcc->stats->tx);


 if ( g_atm_priv_data.conn[conn].tx_skb[desc_base] != ((void*)0) )
  dev_kfree_skb_any(g_atm_priv_data.conn[conn].tx_skb[desc_base]);
 g_atm_priv_data.conn[conn].tx_skb[desc_base] = skb;


 g_atm_priv_data.conn[conn].tx_desc[desc_base] = reg_desc;
 dma_cache_wback((unsigned long)skb->data, CELL_SIZE);

 mailbox_signal(conn, 1);

 g_atm_priv_data.wtx_oam++;
 adsl_led_flash();

 return 0;
}

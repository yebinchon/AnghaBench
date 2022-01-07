
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {int backlog; } ;
struct lanai_vcc {TYPE_1__ tx; int vci; } ;
struct lanai_dev {int backlog_vccs; } ;


 int APRINTK (int,char*,int) ;
 int TXREADPTR_GET_PTR (int ) ;
 int __set_bit (int ,int ) ;
 int aal5_size (int ) ;
 int cardvcc_read (struct lanai_vcc*,int ) ;
 int lanai_send_one_aal5 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ vcc_is_backlogged (struct lanai_vcc*) ;
 int vcc_tx_space (struct lanai_vcc*,int ) ;
 int vcc_txreadptr ;

__attribute__((used)) static void vcc_tx_aal5(struct lanai_dev *lanai, struct lanai_vcc *lvcc,
 struct sk_buff *skb)
{
 int space, n;
 if (vcc_is_backlogged(lvcc))
  goto queue_it;
 space = vcc_tx_space(lvcc,
      TXREADPTR_GET_PTR(cardvcc_read(lvcc, vcc_txreadptr)));
 n = aal5_size(skb->len);
 APRINTK(n + 16 >= 64, "vcc_tx_aal5: n too small (%d)\n", n);
 if (space < n + 16) {
  __set_bit(lvcc->vci, lanai->backlog_vccs);
     queue_it:
  skb_queue_tail(&lvcc->tx.backlog, skb);
  return;
 }
 lanai_send_one_aal5(lanai, lvcc, skb, n);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {int backlog; } ;
struct lanai_vcc {int vci; TYPE_1__ tx; } ;
struct lanai_dev {int backlog_vccs; } ;


 int APRINTK (int ,char*,int ) ;
 int __clear_bit (int ,int ) ;
 int aal5_size (int ) ;
 int lanai_send_one_aal5 (struct lanai_dev*,struct lanai_vcc*,struct sk_buff*,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int vcc_is_backlogged (struct lanai_vcc*) ;
 int vcc_tx_space (struct lanai_vcc*,int) ;

__attribute__((used)) static void vcc_tx_unqueue_aal5(struct lanai_dev *lanai,
 struct lanai_vcc *lvcc, int endptr)
{
 int n;
 struct sk_buff *skb;
 int space = vcc_tx_space(lvcc, endptr);
 APRINTK(vcc_is_backlogged(lvcc),
     "vcc_tx_unqueue() called with empty backlog (vci=%d)\n",
     lvcc->vci);
 while (space >= 64) {
  skb = skb_dequeue(&lvcc->tx.backlog);
  if (skb == ((void*)0))
   goto no_backlog;
  n = aal5_size(skb->len);
  if (n + 16 > space) {

   skb_queue_head(&lvcc->tx.backlog, skb);
   return;
  }
  lanai_send_one_aal5(lanai, lvcc, skb, n);
  space -= n + 16;
 }
 if (!vcc_is_backlogged(lvcc)) {
     no_backlog:
  __clear_bit(lvcc->vci, lanai->backlog_vccs);
 }
}

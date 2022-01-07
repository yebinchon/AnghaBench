
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_5__ {TYPE_3__* atmvcc; } ;
struct lanai_vcc {TYPE_2__ tx; } ;
struct lanai_dev {int dummy; } ;
struct TYPE_6__ {TYPE_1__* stats; } ;
struct TYPE_4__ {int tx; } ;


 int APRINTK (int,char*,int,...) ;
 int aal5_size (int) ;
 int atomic_inc (int *) ;
 int lanai_endtx (struct lanai_dev*,struct lanai_vcc*) ;
 int lanai_free_skb (TYPE_3__*,struct sk_buff*) ;
 int vcc_tx_add_aal5_descriptor (struct lanai_vcc*,int ,int) ;
 int vcc_tx_add_aal5_trailer (struct lanai_vcc*,int,int ,int ) ;
 int vcc_tx_memcpy (struct lanai_vcc*,int ,int) ;
 int vcc_tx_memzero (struct lanai_vcc*,int) ;

__attribute__((used)) static void lanai_send_one_aal5(struct lanai_dev *lanai,
 struct lanai_vcc *lvcc, struct sk_buff *skb, int pdusize)
{
 int pad;
 APRINTK(pdusize == aal5_size(skb->len),
     "lanai_send_one_aal5: wrong size packet (%d != %d)\n",
     pdusize, aal5_size(skb->len));
 vcc_tx_add_aal5_descriptor(lvcc, 0, pdusize);
 pad = pdusize - skb->len - 8;
 APRINTK(pad >= 0, "pad is negative (%d)\n", pad);
 APRINTK(pad < 48, "pad is too big (%d)\n", pad);
 vcc_tx_memcpy(lvcc, skb->data, skb->len);
 vcc_tx_memzero(lvcc, pad);
 vcc_tx_add_aal5_trailer(lvcc, skb->len, 0, 0);
 lanai_endtx(lanai, lvcc);
 lanai_free_skb(lvcc->tx.atmvcc, skb);
 atomic_inc(&lvcc->tx.atmvcc->stats->tx);
}

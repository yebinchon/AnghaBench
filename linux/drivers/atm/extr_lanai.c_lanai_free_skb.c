
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct atm_vcc {int (* pop ) (struct atm_vcc*,struct sk_buff*) ;} ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static inline void lanai_free_skb(struct atm_vcc *atmvcc, struct sk_buff *skb)
{
 if (atmvcc->pop != ((void*)0))
  atmvcc->pop(atmvcc, skb);
 else
  dev_kfree_skb_any(skb);
}

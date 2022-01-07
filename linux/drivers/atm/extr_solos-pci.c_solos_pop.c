
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct atm_vcc {int (* pop ) (struct atm_vcc*,struct sk_buff*) ;} ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static inline void solos_pop(struct atm_vcc *vcc, struct sk_buff *skb)
{
        if (vcc->pop)
                vcc->pop(vcc, skb);
        else
                dev_kfree_skb_any(skb);
}

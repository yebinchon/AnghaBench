
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vcc; } ;
struct TYPE_3__ {int (* pop ) (TYPE_1__*,struct sk_buff*) ;} ;


 TYPE_2__* ATM_SKB (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int stub1 (TYPE_1__*,struct sk_buff*) ;

__attribute__((used)) static inline void fs_kfree_skb (struct sk_buff * skb)
{
 if (ATM_SKB(skb)->vcc->pop)
  ATM_SKB(skb)->vcc->pop (ATM_SKB(skb)->vcc, skb);
 else
  dev_kfree_skb_any (skb);
}

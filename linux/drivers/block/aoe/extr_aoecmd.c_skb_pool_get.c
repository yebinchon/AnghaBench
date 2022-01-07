
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct aoedev {int skbpool; } ;
struct TYPE_2__ {int dataref; } ;


 int ETH_ZLEN ;
 scalar_t__ NSKBPOOLMAX ;
 int __skb_unlink (struct sk_buff*,int *) ;
 int atomic_read (int *) ;
 struct sk_buff* new_skb (int ) ;
 struct sk_buff* skb_peek (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
skb_pool_get(struct aoedev *d)
{
 struct sk_buff *skb = skb_peek(&d->skbpool);

 if (skb && atomic_read(&skb_shinfo(skb)->dataref) == 1) {
  __skb_unlink(skb, &d->skbpool);
  return skb;
 }
 if (skb_queue_len(&d->skbpool) < NSKBPOOLMAX &&
     (skb = new_skb(ETH_ZLEN)))
  return skb;

 return ((void*)0);
}

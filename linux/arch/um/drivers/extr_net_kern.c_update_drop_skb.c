
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* dev_alloc_skb (int) ;
 int drop_lock ;
 int drop_max ;
 struct sk_buff* drop_skb ;
 int kfree_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int update_drop_skb(int max)
{
 struct sk_buff *new;
 unsigned long flags;
 int err = 0;

 spin_lock_irqsave(&drop_lock, flags);

 if (max <= drop_max)
  goto out;

 err = -ENOMEM;
 new = dev_alloc_skb(max);
 if (new == ((void*)0))
  goto out;

 skb_put(new, max);

 kfree_skb(drop_skb);
 drop_skb = new;
 drop_max = max;
 err = 0;
out:
 spin_unlock_irqrestore(&drop_lock, flags);

 return err;
}

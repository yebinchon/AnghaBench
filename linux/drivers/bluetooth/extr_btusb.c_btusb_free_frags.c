
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btusb_data {int rxlock; int * sco_skb; int * acl_skb; int * evt_skb; } ;


 int kfree_skb (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void btusb_free_frags(struct btusb_data *data)
{
 unsigned long flags;

 spin_lock_irqsave(&data->rxlock, flags);

 kfree_skb(data->evt_skb);
 data->evt_skb = ((void*)0);

 kfree_skb(data->acl_skb);
 data->acl_skb = ((void*)0);

 kfree_skb(data->sco_skb);
 data->sco_skb = ((void*)0);

 spin_unlock_irqrestore(&data->rxlock, flags);
}

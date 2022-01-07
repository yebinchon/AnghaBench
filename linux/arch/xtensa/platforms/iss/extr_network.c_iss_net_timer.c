
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct iss_net_private {int lock; scalar_t__ timer_val; int timer; } ;


 struct iss_net_private* from_timer (int ,struct timer_list*,int ) ;
 int iss_net_poll () ;
 scalar_t__ jiffies ;
 struct iss_net_private* lp ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer ;

__attribute__((used)) static void iss_net_timer(struct timer_list *t)
{
 struct iss_net_private *lp = from_timer(lp, t, timer);

 iss_net_poll();
 spin_lock(&lp->lock);
 mod_timer(&lp->timer, jiffies + lp->timer_val);
 spin_unlock(&lp->lock);
}

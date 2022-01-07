
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {int lock; scalar_t__ data_in_avail; int queue; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct kcs_bmc* to_kcs_bmc (struct file*) ;

__attribute__((used)) static __poll_t kcs_bmc_poll(struct file *filp, poll_table *wait)
{
 struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
 __poll_t mask = 0;

 poll_wait(filp, &kcs_bmc->queue, wait);

 spin_lock_irq(&kcs_bmc->lock);
 if (kcs_bmc->data_in_avail)
  mask |= EPOLLIN;
 spin_unlock_irq(&kcs_bmc->lock);

 return mask;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {int lock; scalar_t__ running; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int kcs_force_abort (struct kcs_bmc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct kcs_bmc* to_kcs_bmc (struct file*) ;

__attribute__((used)) static int kcs_bmc_release(struct inode *inode, struct file *filp)
{
 struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);

 spin_lock_irq(&kcs_bmc->lock);
 kcs_bmc->running = 0;
 kcs_force_abort(kcs_bmc);
 spin_unlock_irq(&kcs_bmc->lock);

 return 0;
}

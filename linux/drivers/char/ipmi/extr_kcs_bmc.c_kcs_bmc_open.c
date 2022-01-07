
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {int running; int lock; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct kcs_bmc* to_kcs_bmc (struct file*) ;

__attribute__((used)) static int kcs_bmc_open(struct inode *inode, struct file *filp)
{
 struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
 int ret = 0;

 spin_lock_irq(&kcs_bmc->lock);
 if (!kcs_bmc->running)
  kcs_bmc->running = 1;
 else
  ret = -EBUSY;
 spin_unlock_irq(&kcs_bmc->lock);

 return ret;
}

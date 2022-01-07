
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcs_bmc {int lock; } ;
struct file {int dummy; } ;


 long EINVAL ;



 int KCS_STATUS_SMS_ATN ;
 int kcs_force_abort (struct kcs_bmc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct kcs_bmc* to_kcs_bmc (struct file*) ;
 int update_status_bits (struct kcs_bmc*,int ,int ) ;

__attribute__((used)) static long kcs_bmc_ioctl(struct file *filp, unsigned int cmd,
     unsigned long arg)
{
 struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
 long ret = 0;

 spin_lock_irq(&kcs_bmc->lock);

 switch (cmd) {
 case 128:
  update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN,
       KCS_STATUS_SMS_ATN);
  break;

 case 130:
  update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN,
       0);
  break;

 case 129:
  kcs_force_abort(kcs_bmc);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 spin_unlock_irq(&kcs_bmc->lock);

 return ret;
}

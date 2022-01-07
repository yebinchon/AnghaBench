
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {scalar_t__* ref_count; int mask; int ref_lock; } ;
struct kvm_s390_gisa_interrupt {TYPE_2__ alert; int origin; } ;
struct TYPE_3__ {struct kvm_s390_gisa_interrupt gisa_int; } ;
struct kvm {TYPE_1__ arch; } ;


 int EINVAL ;
 int ENODEV ;
 int ERANGE ;
 size_t MAX_ISC ;
 int gisa_set_iam (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvm_s390_gisc_unregister(struct kvm *kvm, u32 gisc)
{
 struct kvm_s390_gisa_interrupt *gi = &kvm->arch.gisa_int;
 int rc = 0;

 if (!gi->origin)
  return -ENODEV;
 if (gisc > MAX_ISC)
  return -ERANGE;

 spin_lock(&gi->alert.ref_lock);
 if (gi->alert.ref_count[gisc] == 0) {
  rc = -EINVAL;
  goto out;
 }
 gi->alert.ref_count[gisc]--;
 if (gi->alert.ref_count[gisc] == 0) {
  gi->alert.mask &= ~(0x80 >> gisc);
  gisa_set_iam(gi->origin, gi->alert.mask);
 }
out:
 spin_unlock(&gi->alert.ref_lock);

 return rc;
}

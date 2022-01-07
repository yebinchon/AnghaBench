
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int* ref_count; int mask; int ref_lock; } ;
struct kvm_s390_gisa_interrupt {TYPE_1__ alert; int origin; } ;
struct TYPE_5__ {struct kvm_s390_gisa_interrupt gisa_int; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_6__ {int nisc; } ;


 int ENODEV ;
 int ERANGE ;
 size_t MAX_ISC ;
 TYPE_3__* gib ;
 int gisa_set_iam (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvm_s390_gisc_register(struct kvm *kvm, u32 gisc)
{
 struct kvm_s390_gisa_interrupt *gi = &kvm->arch.gisa_int;

 if (!gi->origin)
  return -ENODEV;
 if (gisc > MAX_ISC)
  return -ERANGE;

 spin_lock(&gi->alert.ref_lock);
 gi->alert.ref_count[gisc]++;
 if (gi->alert.ref_count[gisc] == 1) {
  gi->alert.mask |= 0x80 >> gisc;
  gisa_set_iam(gi->origin, gi->alert.mask);
 }
 spin_unlock(&gi->alert.ref_lock);

 return gib->nisc;
}

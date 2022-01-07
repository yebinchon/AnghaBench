
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_s390_gisa_interrupt {int origin; } ;
struct TYPE_2__ {struct kvm_s390_gisa_interrupt gisa_int; } ;
struct kvm {TYPE_1__ arch; } ;


 int VM_EVENT (struct kvm*,int,char*,int ) ;
 int gisa_clear_ipm (int ) ;

void kvm_s390_gisa_clear(struct kvm *kvm)
{
 struct kvm_s390_gisa_interrupt *gi = &kvm->arch.gisa_int;

 if (!gi->origin)
  return;
 gisa_clear_ipm(gi->origin);
 VM_EVENT(kvm, 3, "gisa 0x%pK cleared", gi->origin);
}

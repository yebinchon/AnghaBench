
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {struct kvm_lapic* apic; } ;
struct TYPE_10__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_3__* vmcb; } ;
struct kvm_lapic {int dummy; } ;
struct TYPE_8__ {int exit_info_1; } ;
struct TYPE_9__ {TYPE_2__ control; } ;





 int AVIC_UNACCEL_ACCESS_OFFSET_MASK ;
 int avic_handle_apic_id_update (TYPE_4__*) ;
 int avic_handle_dfr_update (TYPE_4__*) ;
 int avic_handle_ldr_update (TYPE_4__*) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int) ;
 int kvm_lapic_reg_write (struct kvm_lapic*,int,int ) ;

__attribute__((used)) static int avic_unaccel_trap_write(struct vcpu_svm *svm)
{
 struct kvm_lapic *apic = svm->vcpu.arch.apic;
 u32 offset = svm->vmcb->control.exit_info_1 &
    AVIC_UNACCEL_ACCESS_OFFSET_MASK;

 switch (offset) {
 case 129:
  if (avic_handle_apic_id_update(&svm->vcpu))
   return 0;
  break;
 case 128:
  if (avic_handle_ldr_update(&svm->vcpu))
   return 0;
  break;
 case 130:
  avic_handle_dfr_update(&svm->vcpu);
  break;
 default:
  break;
 }

 kvm_lapic_reg_write(apic, offset, kvm_lapic_get_reg(apic, offset));

 return 1;
}

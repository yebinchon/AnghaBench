
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {scalar_t__ pgoff; int page; } ;
struct TYPE_2__ {int sie_block; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 scalar_t__ KVM_S390_SIE_PAGE_OFFSET ;
 int VM_FAULT_SIGBUS ;
 int get_page (int ) ;
 scalar_t__ kvm_is_ucontrol (int ) ;
 int virt_to_page (int ) ;

vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
{
 return VM_FAULT_SIGBUS;
}

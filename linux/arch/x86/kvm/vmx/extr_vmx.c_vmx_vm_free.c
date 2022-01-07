
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hv_pa_pg; } ;
struct TYPE_4__ {TYPE_1__ hyperv; } ;
struct kvm {TYPE_2__ arch; } ;


 int kfree (int ) ;
 int to_kvm_vmx (struct kvm*) ;
 int vfree (int ) ;

__attribute__((used)) static void vmx_vm_free(struct kvm *kvm)
{
 kfree(kvm->arch.hyperv.hv_pa_pg);
 vfree(to_kvm_vmx(kvm));
}

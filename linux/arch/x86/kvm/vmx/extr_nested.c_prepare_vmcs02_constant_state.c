
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int val; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_9__ {TYPE_3__ guest; TYPE_2__ host; } ;
struct TYPE_6__ {int msr_bitmap; } ;
struct TYPE_10__ {int vmcs02_initialized; TYPE_1__ vmcs02; } ;
struct vcpu_vmx {TYPE_4__ msr_autoload; int pml_pg; TYPE_5__ nested; int vcpu; } ;


 int ENCLS_EXITING_BITMAP ;
 int EPT_POINTER ;
 int GUEST_PML_INDEX ;
 int MSR_BITMAP ;
 int PML_ADDRESS ;
 scalar_t__ PML_ENTITY_NUM ;
 scalar_t__ POSTED_INTR_NESTED_VECTOR ;
 int POSTED_INTR_NV ;
 int VM_ENTRY_MSR_LOAD_ADDR ;
 int VM_EXIT_MSR_LOAD_ADDR ;
 int VM_EXIT_MSR_STORE_COUNT ;
 int VM_FUNCTION_CONTROL ;
 unsigned long long __pa (int ) ;
 unsigned long long construct_eptp (int *,int ) ;
 scalar_t__ cpu_has_vmx_encls_vmexit () ;
 scalar_t__ cpu_has_vmx_msr_bitmap () ;
 scalar_t__ cpu_has_vmx_posted_intr () ;
 scalar_t__ cpu_has_vmx_vmfunc () ;
 scalar_t__ enable_ept ;
 scalar_t__ enable_pml ;
 scalar_t__ nested_early_check ;
 unsigned long long page_to_phys (int ) ;
 int vmcs_write16 (int ,scalar_t__) ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_write64 (int ,unsigned long long) ;
 int vmx_set_constant_host_state (struct vcpu_vmx*) ;

__attribute__((used)) static void prepare_vmcs02_constant_state(struct vcpu_vmx *vmx)
{






 if (vmx->nested.vmcs02_initialized)
  return;
 vmx->nested.vmcs02_initialized = 1;






 if (enable_ept && nested_early_check)
  vmcs_write64(EPT_POINTER, construct_eptp(&vmx->vcpu, 0));


 if (cpu_has_vmx_vmfunc())
  vmcs_write64(VM_FUNCTION_CONTROL, 0);

 if (cpu_has_vmx_posted_intr())
  vmcs_write16(POSTED_INTR_NV, POSTED_INTR_NESTED_VECTOR);

 if (cpu_has_vmx_msr_bitmap())
  vmcs_write64(MSR_BITMAP, __pa(vmx->nested.vmcs02.msr_bitmap));
 if (enable_pml) {
  vmcs_write64(PML_ADDRESS, page_to_phys(vmx->pml_pg));
  vmcs_write16(GUEST_PML_INDEX, PML_ENTITY_NUM - 1);
 }

 if (cpu_has_vmx_encls_vmexit())
  vmcs_write64(ENCLS_EXITING_BITMAP, -1ull);






 vmcs_write32(VM_EXIT_MSR_STORE_COUNT, 0);
 vmcs_write64(VM_EXIT_MSR_LOAD_ADDR, __pa(vmx->msr_autoload.host.val));
 vmcs_write64(VM_ENTRY_MSR_LOAD_ADDR, __pa(vmx->msr_autoload.guest.val));

 vmx_set_constant_host_state(vmx);
}

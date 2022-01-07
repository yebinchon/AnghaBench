
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nr; int * val; } ;
struct msr_autoload {TYPE_1__ host; TYPE_1__ guest; } ;
struct vcpu_vmx {struct msr_autoload msr_autoload; } ;




 int VM_ENTRY_LOAD_IA32_EFER ;
 int VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL ;
 int VM_ENTRY_MSR_LOAD_COUNT ;
 int VM_EXIT_LOAD_IA32_EFER ;
 int VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL ;
 int VM_EXIT_MSR_LOAD_COUNT ;
 int clear_atomic_switch_msr_special (struct vcpu_vmx*,int ,int ) ;
 int cpu_has_load_ia32_efer () ;
 int cpu_has_load_perf_global_ctrl () ;
 int find_msr (TYPE_1__*,unsigned int) ;
 int vmcs_write32 (int ,size_t) ;

__attribute__((used)) static void clear_atomic_switch_msr(struct vcpu_vmx *vmx, unsigned msr)
{
 int i;
 struct msr_autoload *m = &vmx->msr_autoload;

 switch (msr) {
 case 128:
  if (cpu_has_load_ia32_efer()) {
   clear_atomic_switch_msr_special(vmx,
     VM_ENTRY_LOAD_IA32_EFER,
     VM_EXIT_LOAD_IA32_EFER);
   return;
  }
  break;
 case 129:
  if (cpu_has_load_perf_global_ctrl()) {
   clear_atomic_switch_msr_special(vmx,
     VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL,
     VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL);
   return;
  }
  break;
 }
 i = find_msr(&m->guest, msr);
 if (i < 0)
  goto skip_guest;
 --m->guest.nr;
 m->guest.val[i] = m->guest.val[m->guest.nr];
 vmcs_write32(VM_ENTRY_MSR_LOAD_COUNT, m->guest.nr);

skip_guest:
 i = find_msr(&m->host, msr);
 if (i < 0)
  return;

 --m->host.nr;
 m->host.val[i] = m->host.val[m->host.nr];
 vmcs_write32(VM_EXIT_MSR_LOAD_COUNT, m->host.nr);
}

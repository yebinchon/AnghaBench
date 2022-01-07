
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmcs12 {int msr_bitmap; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {scalar_t__ hva; } ;
struct TYPE_4__ {unsigned long* msr_bitmap; } ;
struct TYPE_5__ {struct kvm_host_map msr_bitmap_map; TYPE_1__ vmcs02; } ;
struct TYPE_6__ {TYPE_2__ nested; } ;


 int APIC_EOI ;
 int APIC_SELF_IPI ;
 int APIC_TASKPRI ;
 int BITS_PER_LONG ;
 int CPU_BASED_USE_MSR_BITMAPS ;
 int MSR_FS_BASE ;
 int MSR_GS_BASE ;
 int MSR_IA32_PRED_CMD ;
 int MSR_IA32_SPEC_CTRL ;
 int MSR_KERNEL_GS_BASE ;
 int MSR_TYPE_R ;
 int MSR_TYPE_RW ;
 int MSR_TYPE_W ;
 int X2APIC_MSR (int ) ;
 int cpu_has_vmx_msr_bitmap () ;
 int enable_x2apic_msr_intercepts (unsigned long*) ;
 int gpa_to_gfn (int ) ;
 scalar_t__ kvm_vcpu_map (struct kvm_vcpu*,int ,struct kvm_host_map*) ;
 int kvm_vcpu_unmap (struct kvm_vcpu*,struct kvm_host_map*,int) ;
 int msr_write_intercepted_l01 (struct kvm_vcpu*,int ) ;
 int nested_cpu_has (struct vmcs12*,int ) ;
 scalar_t__ nested_cpu_has_apic_reg_virt (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_vid (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_virt_x2apic_mode (struct vmcs12*) ;
 int nested_vmx_disable_intercept_for_msr (unsigned long*,unsigned long*,int ,int) ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool nested_vmx_prepare_msr_bitmap(struct kvm_vcpu *vcpu,
       struct vmcs12 *vmcs12)
{
 int msr;
 unsigned long *msr_bitmap_l1;
 unsigned long *msr_bitmap_l0 = to_vmx(vcpu)->nested.vmcs02.msr_bitmap;
 struct kvm_host_map *map = &to_vmx(vcpu)->nested.msr_bitmap_map;


 if (!cpu_has_vmx_msr_bitmap() ||
     !nested_cpu_has(vmcs12, CPU_BASED_USE_MSR_BITMAPS))
  return 0;

 if (kvm_vcpu_map(vcpu, gpa_to_gfn(vmcs12->msr_bitmap), map))
  return 0;

 msr_bitmap_l1 = (unsigned long *)map->hva;






 enable_x2apic_msr_intercepts(msr_bitmap_l0);

 if (nested_cpu_has_virt_x2apic_mode(vmcs12)) {
  if (nested_cpu_has_apic_reg_virt(vmcs12)) {






   for (msr = 0x800; msr <= 0x8ff; msr += BITS_PER_LONG) {
    unsigned word = msr / BITS_PER_LONG;

    msr_bitmap_l0[word] = msr_bitmap_l1[word];
   }
  }

  nested_vmx_disable_intercept_for_msr(
   msr_bitmap_l1, msr_bitmap_l0,
   X2APIC_MSR(APIC_TASKPRI),
   MSR_TYPE_R | MSR_TYPE_W);

  if (nested_cpu_has_vid(vmcs12)) {
   nested_vmx_disable_intercept_for_msr(
    msr_bitmap_l1, msr_bitmap_l0,
    X2APIC_MSR(APIC_EOI),
    MSR_TYPE_W);
   nested_vmx_disable_intercept_for_msr(
    msr_bitmap_l1, msr_bitmap_l0,
    X2APIC_MSR(APIC_SELF_IPI),
    MSR_TYPE_W);
  }
 }


 nested_vmx_disable_intercept_for_msr(msr_bitmap_l1, msr_bitmap_l0,
          MSR_FS_BASE, MSR_TYPE_RW);

 nested_vmx_disable_intercept_for_msr(msr_bitmap_l1, msr_bitmap_l0,
          MSR_GS_BASE, MSR_TYPE_RW);

 nested_vmx_disable_intercept_for_msr(msr_bitmap_l1, msr_bitmap_l0,
          MSR_KERNEL_GS_BASE, MSR_TYPE_RW);
 if (!msr_write_intercepted_l01(vcpu, MSR_IA32_SPEC_CTRL))
  nested_vmx_disable_intercept_for_msr(
     msr_bitmap_l1, msr_bitmap_l0,
     MSR_IA32_SPEC_CTRL,
     MSR_TYPE_R | MSR_TYPE_W);

 if (!msr_write_intercepted_l01(vcpu, MSR_IA32_PRED_CMD))
  nested_vmx_disable_intercept_for_msr(
     msr_bitmap_l1, msr_bitmap_l0,
     MSR_IA32_PRED_CMD,
     MSR_TYPE_W);

 kvm_vcpu_unmap(vcpu, &to_vmx(vcpu)->nested.msr_bitmap_map, 0);

 return 1;
}

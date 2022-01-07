
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_3__ {int last_exec_cpu; int* vzguestid; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct TYPE_4__ {int asid_flush_mask; struct mm_struct gpa_mm; } ;
struct kvm {TYPE_2__ arch; } ;


 int GUESTID_MASK ;
 int GUESTID_VERSION_MASK ;
 int change_c0_guestctl1 (int ,int) ;
 int check_mmu_context (struct mm_struct*) ;
 scalar_t__ cpu_has_guestid ;
 scalar_t__ cpumask_test_and_clear_cpu (int,int *) ;
 int get_new_mmu_context (struct mm_struct*) ;
 int guestid_cache (int) ;
 int kvm_vz_get_new_guestid (int,struct kvm_vcpu*) ;
 int kvm_vz_local_flush_guesttlb_all () ;
 struct kvm_vcpu** last_exec_vcpu ;
 int trace_kvm_guestid_change (struct kvm_vcpu*,int) ;

__attribute__((used)) static void kvm_vz_vcpu_load_tlb(struct kvm_vcpu *vcpu, int cpu)
{
 struct kvm *kvm = vcpu->kvm;
 struct mm_struct *gpa_mm = &kvm->arch.gpa_mm;
 bool migrated;





 migrated = (vcpu->arch.last_exec_cpu != cpu);
 vcpu->arch.last_exec_cpu = cpu;







 if (cpu_has_guestid) {







  if (migrated ||
      (vcpu->arch.vzguestid[cpu] ^ guestid_cache(cpu)) &
     GUESTID_VERSION_MASK) {
   kvm_vz_get_new_guestid(cpu, vcpu);
   vcpu->arch.vzguestid[cpu] = guestid_cache(cpu);
   trace_kvm_guestid_change(vcpu,
       vcpu->arch.vzguestid[cpu]);
  }


  change_c0_guestctl1(GUESTID_MASK, vcpu->arch.vzguestid[cpu]);
 } else {







  if (migrated || last_exec_vcpu[cpu] != vcpu)
   kvm_vz_local_flush_guesttlb_all();
  last_exec_vcpu[cpu] = vcpu;





  if (cpumask_test_and_clear_cpu(cpu, &kvm->arch.asid_flush_mask))
   get_new_mmu_context(gpa_mm);
  else
   check_mmu_context(gpa_mm);
 }
}

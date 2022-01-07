
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int ldt; int gs; int fs; int gs_base; } ;
struct vcpu_svm {scalar_t__ vmcb; scalar_t__ tsc_aux; int * host_user_msrs; TYPE_1__ host; scalar_t__ asid_generation; } ;
struct svm_cpu_data {scalar_t__ current_vmcb; } ;
struct TYPE_4__ {scalar_t__ tsc_scaling_ratio; } ;
struct kvm_vcpu {int cpu; TYPE_2__ arch; } ;


 int MSR_AMD64_TSC_RATIO ;
 int MSR_GS_BASE ;
 int MSR_TSC_AUX ;
 int NR_HOST_SAVE_USER_MSRS ;
 int X86_FEATURE_RDTSCP ;
 int X86_FEATURE_TSCRATEMSR ;
 scalar_t__ __this_cpu_read (int ) ;
 int __this_cpu_write (int ,scalar_t__) ;
 int avic_vcpu_load (struct kvm_vcpu*,int) ;
 int current_tsc_ratio ;
 int fs ;
 int gs ;
 int * host_save_user_msrs ;
 int indirect_branch_prediction_barrier () ;
 int kvm_read_ldt () ;
 int mark_all_dirty (scalar_t__) ;
 struct svm_cpu_data* per_cpu (int ,int) ;
 int rdmsrl (int ,int ) ;
 int savesegment (int ,int ) ;
 scalar_t__ static_cpu_has (int ) ;
 int svm_data ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;
 int wrmsrl (int ,scalar_t__) ;

__attribute__((used)) static void svm_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 struct svm_cpu_data *sd = per_cpu(svm_data, cpu);
 int i;

 if (unlikely(cpu != vcpu->cpu)) {
  svm->asid_generation = 0;
  mark_all_dirty(svm->vmcb);
 }




 savesegment(fs, svm->host.fs);
 savesegment(gs, svm->host.gs);
 svm->host.ldt = kvm_read_ldt();

 for (i = 0; i < NR_HOST_SAVE_USER_MSRS; i++)
  rdmsrl(host_save_user_msrs[i], svm->host_user_msrs[i]);

 if (static_cpu_has(X86_FEATURE_TSCRATEMSR)) {
  u64 tsc_ratio = vcpu->arch.tsc_scaling_ratio;
  if (tsc_ratio != __this_cpu_read(current_tsc_ratio)) {
   __this_cpu_write(current_tsc_ratio, tsc_ratio);
   wrmsrl(MSR_AMD64_TSC_RATIO, tsc_ratio);
  }
 }

 if (static_cpu_has(X86_FEATURE_RDTSCP))
  wrmsrl(MSR_TSC_AUX, svm->tsc_aux);

 if (sd->current_vmcb != svm->vmcb) {
  sd->current_vmcb = svm->vmcb;
  indirect_branch_prediction_barrier();
 }
 avic_vcpu_load(vcpu, cpu);
}

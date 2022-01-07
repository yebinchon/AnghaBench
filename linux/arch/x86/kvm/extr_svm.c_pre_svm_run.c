
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kvm; } ;
struct vcpu_svm {scalar_t__ asid_generation; TYPE_1__ vcpu; } ;
struct svm_cpu_data {scalar_t__ asid_generation; } ;


 int new_asid (struct vcpu_svm*,struct svm_cpu_data*) ;
 struct svm_cpu_data* per_cpu (int ,int) ;
 void pre_sev_run (struct vcpu_svm*,int) ;
 int raw_smp_processor_id () ;
 scalar_t__ sev_guest (int ) ;
 int svm_data ;

__attribute__((used)) static void pre_svm_run(struct vcpu_svm *svm)
{
 int cpu = raw_smp_processor_id();

 struct svm_cpu_data *sd = per_cpu(svm_data, cpu);

 if (sev_guest(svm->vcpu.kvm))
  return pre_sev_run(svm, cpu);


 if (svm->asid_generation != sd->asid_generation)
  new_asid(svm, sd);
}

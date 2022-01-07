
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_msr_entry {int index; scalar_t__ data; } ;



 scalar_t__ MSR_F10H_DECFG_LFENCE_SERIALIZE ;
 int X86_FEATURE_LFENCE_RDTSC ;
 int boot_cpu_has (int ) ;

__attribute__((used)) static int svm_get_msr_feature(struct kvm_msr_entry *msr)
{
 msr->data = 0;

 switch (msr->index) {
 case 128:
  if (boot_cpu_has(X86_FEATURE_LFENCE_RDTSC))
   msr->data |= MSR_F10H_DECFG_LFENCE_SERIALIZE;
  break;
 default:
  return 1;
 }

 return 0;
}

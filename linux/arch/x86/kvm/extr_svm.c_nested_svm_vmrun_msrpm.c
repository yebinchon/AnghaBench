
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_6__ {unsigned long long intercept; int* msrpm; scalar_t__ vmcb_msrpm; } ;
struct vcpu_svm {int* msrpm; TYPE_3__ nested; TYPE_2__* vmcb; int vcpu; } ;
struct TYPE_4__ {int msrpm_base_pa; } ;
struct TYPE_5__ {TYPE_1__ control; } ;


 unsigned long long INTERCEPT_MSR_PROT ;
 int MSRPM_OFFSETS ;
 int __pa (int*) ;
 int __sme_set (int ) ;
 scalar_t__ kvm_vcpu_read_guest (int *,scalar_t__,int*,int) ;
 int* msrpm_offsets ;

__attribute__((used)) static bool nested_svm_vmrun_msrpm(struct vcpu_svm *svm)
{





 int i;

 if (!(svm->nested.intercept & (1ULL << INTERCEPT_MSR_PROT)))
  return 1;

 for (i = 0; i < MSRPM_OFFSETS; i++) {
  u32 value, p;
  u64 offset;

  if (msrpm_offsets[i] == 0xffffffff)
   break;

  p = msrpm_offsets[i];
  offset = svm->nested.vmcb_msrpm + (p * 4);

  if (kvm_vcpu_read_guest(&svm->vcpu, offset, &value, 4))
   return 0;

  svm->nested.msrpm[p] = svm->msrpm[p] | value;
 }

 svm->vmcb->control.msrpm_base_pa = __sme_set(__pa(svm->nested.msrpm));

 return 1;
}

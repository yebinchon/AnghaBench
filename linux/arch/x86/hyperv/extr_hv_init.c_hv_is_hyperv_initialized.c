
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union hv_x64_msr_hypercall_contents {int enable; scalar_t__ as_uint64; } ;


 int HV_X64_MSR_HYPERCALL ;
 scalar_t__ X86_HYPER_MS_HYPERV ;
 int rdmsrl (int ,scalar_t__) ;
 scalar_t__ x86_hyper_type ;

bool hv_is_hyperv_initialized(void)
{
 union hv_x64_msr_hypercall_contents hypercall_msr;





 if (x86_hyper_type != X86_HYPER_MS_HYPERV)
  return 0;





 hypercall_msr.as_uint64 = 0;
 rdmsrl(HV_X64_MSR_HYPERCALL, hypercall_msr.as_uint64);

 return hypercall_msr.enable;
}

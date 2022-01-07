
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int pinbased_ctls_low; int pinbased_ctls_high; int procbased_ctls_low; int procbased_ctls_high; int exit_ctls_low; int exit_ctls_high; int entry_ctls_low; int entry_ctls_high; int secondary_ctls_low; int secondary_ctls_high; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;


 int BUG () ;
 int EINVAL ;
 int GENMASK_ULL (int,int) ;





 int is_bitwise_subset (int,int,int ) ;
 int vmx_control_msr (int,int) ;

__attribute__((used)) static int
vmx_restore_control_msr(struct vcpu_vmx *vmx, u32 msr_index, u64 data)
{
 u64 supported;
 u32 *lowp, *highp;

 switch (msr_index) {
 case 129:
  lowp = &vmx->nested.msrs.pinbased_ctls_low;
  highp = &vmx->nested.msrs.pinbased_ctls_high;
  break;
 case 128:
  lowp = &vmx->nested.msrs.procbased_ctls_low;
  highp = &vmx->nested.msrs.procbased_ctls_high;
  break;
 case 130:
  lowp = &vmx->nested.msrs.exit_ctls_low;
  highp = &vmx->nested.msrs.exit_ctls_high;
  break;
 case 131:
  lowp = &vmx->nested.msrs.entry_ctls_low;
  highp = &vmx->nested.msrs.entry_ctls_high;
  break;
 case 132:
  lowp = &vmx->nested.msrs.secondary_ctls_low;
  highp = &vmx->nested.msrs.secondary_ctls_high;
  break;
 default:
  BUG();
 }

 supported = vmx_control_msr(*lowp, *highp);


 if (!is_bitwise_subset(data, supported, GENMASK_ULL(31, 0)))
  return -EINVAL;


 if (!is_bitwise_subset(supported, data, GENMASK_ULL(63, 32)))
  return -EINVAL;

 *lowp = data;
 *highp = data >> 32;
 return 0;
}

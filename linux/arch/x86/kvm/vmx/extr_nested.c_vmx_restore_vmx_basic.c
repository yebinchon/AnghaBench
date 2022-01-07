
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int basic; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;


 int BIT_ULL (int) ;
 int EINVAL ;
 int GENMASK_ULL (int,int) ;
 int is_bitwise_subset (int,int,int const) ;
 scalar_t__ vmx_basic_vmcs_revision_id (int) ;
 scalar_t__ vmx_basic_vmcs_size (int) ;

__attribute__((used)) static int vmx_restore_vmx_basic(struct vcpu_vmx *vmx, u64 data)
{
 const u64 feature_and_reserved =

  BIT_ULL(49) | BIT_ULL(54) | BIT_ULL(55) |

  BIT_ULL(31) | GENMASK_ULL(47, 45) | GENMASK_ULL(63, 56);
 u64 vmx_basic = vmx->nested.msrs.basic;

 if (!is_bitwise_subset(vmx_basic, data, feature_and_reserved))
  return -EINVAL;





 if (data & BIT_ULL(48))
  return -EINVAL;

 if (vmx_basic_vmcs_revision_id(vmx_basic) !=
     vmx_basic_vmcs_revision_id(data))
  return -EINVAL;

 if (vmx_basic_vmcs_size(vmx_basic) > vmx_basic_vmcs_size(data))
  return -EINVAL;

 vmx->nested.msrs.basic = data;
 return 0;
}

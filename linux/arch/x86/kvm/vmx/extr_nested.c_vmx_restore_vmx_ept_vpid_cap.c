
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int ept_caps; int vpid_caps; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;


 int EINVAL ;
 int is_bitwise_subset (int,int,unsigned long long) ;
 int vmx_control_msr (int,int) ;

__attribute__((used)) static int vmx_restore_vmx_ept_vpid_cap(struct vcpu_vmx *vmx, u64 data)
{
 u64 vmx_ept_vpid_cap;

 vmx_ept_vpid_cap = vmx_control_msr(vmx->nested.msrs.ept_caps,
        vmx->nested.msrs.vpid_caps);


 if (!is_bitwise_subset(vmx_ept_vpid_cap, data, -1ULL))
  return -EINVAL;

 vmx->nested.msrs.ept_caps = data;
 vmx->nested.msrs.vpid_caps = data >> 32;
 return 0;
}

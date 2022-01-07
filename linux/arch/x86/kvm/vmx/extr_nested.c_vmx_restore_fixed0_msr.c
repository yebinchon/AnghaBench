
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int cr4_fixed0; int cr0_fixed0; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;


 int BUG () ;
 int EINVAL ;


 int is_bitwise_subset (int ,int ,unsigned long long) ;

__attribute__((used)) static int vmx_restore_fixed0_msr(struct vcpu_vmx *vmx, u32 msr_index, u64 data)
{
 u64 *msr;

 switch (msr_index) {
 case 129:
  msr = &vmx->nested.msrs.cr0_fixed0;
  break;
 case 128:
  msr = &vmx->nested.msrs.cr4_fixed0;
  break;
 default:
  BUG();
 }





 if (!is_bitwise_subset(data, *msr, -1ULL))
  return -EINVAL;

 *msr = data;
 return 0;
}

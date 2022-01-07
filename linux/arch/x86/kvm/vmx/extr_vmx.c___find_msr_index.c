
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vcpu_vmx {int nmsrs; TYPE_1__* guest_msrs; } ;
struct TYPE_2__ {size_t index; } ;


 scalar_t__* vmx_msr_index ;

__attribute__((used)) static inline int __find_msr_index(struct vcpu_vmx *vmx, u32 msr)
{
 int i;

 for (i = 0; i < vmx->nmsrs; ++i)
  if (vmx_msr_index[vmx->guest_msrs[i].index] == msr)
   return i;
 return -1;
}

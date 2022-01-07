
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tsc_scaling_ratio; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct vcpu_vmx {int current_tsc_ratio; TYPE_2__ vcpu; } ;


 int TSC_MULTIPLIER ;
 int vmcs_write64 (int ,int ) ;

__attribute__((used)) static inline void decache_tsc_multiplier(struct vcpu_vmx *vmx)
{
 vmx->current_tsc_ratio = vmx->vcpu.arch.tsc_scaling_ratio;
 vmcs_write64(TSC_MULTIPLIER, vmx->current_tsc_ratio);
}

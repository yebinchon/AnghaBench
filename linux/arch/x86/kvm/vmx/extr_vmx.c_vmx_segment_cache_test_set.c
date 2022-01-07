
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int bitmask; } ;
struct TYPE_6__ {int regs_avail; } ;
struct TYPE_5__ {TYPE_3__ arch; } ;
struct vcpu_vmx {TYPE_1__ segment_cache; TYPE_2__ vcpu; } ;


 unsigned int SEG_FIELD_NR ;
 int VCPU_EXREG_SEGMENTS ;

__attribute__((used)) static bool vmx_segment_cache_test_set(struct vcpu_vmx *vmx, unsigned seg,
           unsigned field)
{
 bool ret;
 u32 mask = 1 << (seg * SEG_FIELD_NR + field);

 if (!(vmx->vcpu.arch.regs_avail & (1 << VCPU_EXREG_SEGMENTS))) {
  vmx->vcpu.arch.regs_avail |= (1 << VCPU_EXREG_SEGMENTS);
  vmx->segment_cache.bitmask = 0;
 }
 ret = vmx->segment_cache.bitmask & mask;
 vmx->segment_cache.bitmask |= mask;
 return ret;
}

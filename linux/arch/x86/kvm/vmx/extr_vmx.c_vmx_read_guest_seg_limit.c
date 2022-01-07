
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* seg; } ;
struct vcpu_vmx {TYPE_2__ segment_cache; } ;
struct TYPE_6__ {int limit; } ;
struct TYPE_4__ {int limit; } ;


 int SEG_FIELD_LIMIT ;
 TYPE_3__* kvm_vmx_segment_fields ;
 int vmcs_read32 (int ) ;
 int vmx_segment_cache_test_set (struct vcpu_vmx*,unsigned int,int ) ;

__attribute__((used)) static u32 vmx_read_guest_seg_limit(struct vcpu_vmx *vmx, unsigned seg)
{
 u32 *p = &vmx->segment_cache.seg[seg].limit;

 if (!vmx_segment_cache_test_set(vmx, seg, SEG_FIELD_LIMIT))
  *p = vmcs_read32(kvm_vmx_segment_fields[seg].limit);
 return *p;
}

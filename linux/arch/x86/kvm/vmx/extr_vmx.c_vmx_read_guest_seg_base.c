
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_5__ {TYPE_1__* seg; } ;
struct vcpu_vmx {TYPE_2__ segment_cache; } ;
struct TYPE_6__ {int base; } ;
struct TYPE_4__ {int base; } ;


 int SEG_FIELD_BASE ;
 TYPE_3__* kvm_vmx_segment_fields ;
 int vmcs_readl (int ) ;
 int vmx_segment_cache_test_set (struct vcpu_vmx*,unsigned int,int ) ;

__attribute__((used)) static ulong vmx_read_guest_seg_base(struct vcpu_vmx *vmx, unsigned seg)
{
 ulong *p = &vmx->segment_cache.seg[seg].base;

 if (!vmx_segment_cache_test_set(vmx, seg, SEG_FIELD_BASE))
  *p = vmcs_readl(kvm_vmx_segment_fields[seg].base);
 return *p;
}

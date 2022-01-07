
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {TYPE_1__* seg; } ;
struct vcpu_vmx {TYPE_2__ segment_cache; } ;
struct TYPE_6__ {int selector; } ;
struct TYPE_4__ {int selector; } ;


 int SEG_FIELD_SEL ;
 TYPE_3__* kvm_vmx_segment_fields ;
 int vmcs_read16 (int ) ;
 int vmx_segment_cache_test_set (struct vcpu_vmx*,unsigned int,int ) ;

__attribute__((used)) static u16 vmx_read_guest_seg_selector(struct vcpu_vmx *vmx, unsigned seg)
{
 u16 *p = &vmx->segment_cache.seg[seg].selector;

 if (!vmx_segment_cache_test_set(vmx, seg, SEG_FIELD_SEL))
  *p = vmcs_read16(kvm_vmx_segment_fields[seg].selector);
 return *p;
}

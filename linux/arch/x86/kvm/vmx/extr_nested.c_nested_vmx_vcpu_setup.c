
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMREAD_BITMAP ;
 int VMWRITE_BITMAP ;
 int __pa (int ) ;
 scalar_t__ enable_shadow_vmcs ;
 int vmcs_write64 (int ,int ) ;
 int vmx_vmread_bitmap ;
 int vmx_vmwrite_bitmap ;

void nested_vmx_vcpu_setup(void)
{
 if (enable_shadow_vmcs) {
  vmcs_write64(VMREAD_BITMAP, __pa(vmx_vmread_bitmap));
  vmcs_write64(VMWRITE_BITMAP, __pa(vmx_vmwrite_bitmap));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMX_BITMAP_NR ;
 scalar_t__ enable_shadow_vmcs ;
 int free_page (unsigned long) ;
 scalar_t__* vmx_bitmap ;

void nested_vmx_hardware_unsetup(void)
{
 int i;

 if (enable_shadow_vmcs) {
  for (i = 0; i < VMX_BITMAP_NR; i++)
   free_page((unsigned long)vmx_bitmap[i]);
 }
}

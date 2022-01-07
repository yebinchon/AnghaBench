
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int * pml_pg; } ;


 int __free_page (int *) ;

__attribute__((used)) static void vmx_destroy_pml_buffer(struct vcpu_vmx *vmx)
{
 if (vmx->pml_pg) {
  __free_page(vmx->pml_pg);
  vmx->pml_pg = ((void*)0);
 }
}

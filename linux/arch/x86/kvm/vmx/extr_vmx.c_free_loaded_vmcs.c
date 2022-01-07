
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loaded_vmcs {int * shadow_vmcs; scalar_t__ msr_bitmap; int * vmcs; } ;


 int WARN_ON (int ) ;
 int free_page (unsigned long) ;
 int free_vmcs (int *) ;
 int loaded_vmcs_clear (struct loaded_vmcs*) ;

void free_loaded_vmcs(struct loaded_vmcs *loaded_vmcs)
{
 if (!loaded_vmcs->vmcs)
  return;
 loaded_vmcs_clear(loaded_vmcs);
 free_vmcs(loaded_vmcs->vmcs);
 loaded_vmcs->vmcs = ((void*)0);
 if (loaded_vmcs->msr_bitmap)
  free_page((unsigned long)loaded_vmcs->msr_bitmap);
 WARN_ON(loaded_vmcs->shadow_vmcs != ((void*)0));
}

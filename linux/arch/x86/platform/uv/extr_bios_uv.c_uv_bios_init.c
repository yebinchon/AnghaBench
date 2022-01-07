
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct uv_systab {int dummy; } ;
struct TYPE_4__ {scalar_t__ revision; int size; int signature; } ;


 scalar_t__ EFI_INVALID_TABLE_ADDR ;
 int UV_SYSTAB_SIG ;
 scalar_t__ UV_SYSTAB_VERSION_UV4 ;
 scalar_t__ efi_runtime_disabled () ;
 TYPE_1__* ioremap (scalar_t__,int) ;
 int iounmap (TYPE_1__*) ;
 int pr_crit (char*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,scalar_t__) ;
 scalar_t__ strncmp (int ,int ,int) ;
 TYPE_1__* uv_systab ;
 scalar_t__ uv_systab_phys ;

void uv_bios_init(void)
{
 uv_systab = ((void*)0);
 if ((uv_systab_phys == EFI_INVALID_TABLE_ADDR) ||
     !uv_systab_phys || efi_runtime_disabled()) {
  pr_crit("UV: UVsystab: missing\n");
  return;
 }

 uv_systab = ioremap(uv_systab_phys, sizeof(struct uv_systab));
 if (!uv_systab || strncmp(uv_systab->signature, UV_SYSTAB_SIG, 4)) {
  pr_err("UV: UVsystab: bad signature!\n");
  iounmap(uv_systab);
  return;
 }


 if (uv_systab->revision >= UV_SYSTAB_VERSION_UV4) {
  int size = uv_systab->size;

  iounmap(uv_systab);
  uv_systab = ioremap(uv_systab_phys, size);
  if (!uv_systab) {
   pr_err("UV: UVsystab: ioremap(%d) failed!\n", size);
   return;
  }
 }
 pr_info("UV: UVsystab: Revision:%x\n", uv_systab->revision);
}

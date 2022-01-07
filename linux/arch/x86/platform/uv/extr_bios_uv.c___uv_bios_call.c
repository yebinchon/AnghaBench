
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct uv_systab {int function; } ;
typedef int s64 ;
typedef enum uv_bios_cmd { ____Placeholder_uv_bios_cmd } uv_bios_cmd ;


 int BIOS_STATUS_UNIMPLEMENTED ;
 int EFI_OLD_MEMMAP ;
 scalar_t__ __va (int ) ;
 int efi_call (void*,int ,int ,int ,int ,int ,int ) ;
 int efi_call_virt_pointer (struct uv_systab*,int ,int ,int ,int ,int ,int ,int ) ;
 int efi_enabled (int ) ;
 int function ;
 scalar_t__ unlikely (int ) ;
 struct uv_systab* uv_systab ;

__attribute__((used)) static s64 __uv_bios_call(enum uv_bios_cmd which, u64 a1, u64 a2, u64 a3,
   u64 a4, u64 a5)
{
 struct uv_systab *tab = uv_systab;
 s64 ret;

 if (!tab || !tab->function)



  return BIOS_STATUS_UNIMPLEMENTED;





 if (unlikely(efi_enabled(EFI_OLD_MEMMAP)))
  ret = efi_call((void *)__va(tab->function), (u64)which, a1, a2, a3, a4, a5);
 else
  ret = efi_call_virt_pointer(tab, function, (u64)which, a1, a2, a3, a4, a5);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_info {int dummy; } ;
struct boot_params {struct screen_info screen_info; } ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 int EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID ;
 int EFI_LOCATE_BY_PROTOCOL ;
 scalar_t__ EFI_SUCCESS ;
 int EFI_UGA_PROTOCOL_GUID ;
 scalar_t__ efi_call_early (int ,int ,int *,int *,unsigned long*,void**) ;
 scalar_t__ efi_setup_gop (int *,struct screen_info*,int *,unsigned long) ;
 int locate_handle ;
 int memset (struct screen_info*,int ,int) ;
 int setup_uga (struct screen_info*,int *,unsigned long) ;

void setup_graphics(struct boot_params *boot_params)
{
 efi_guid_t graphics_proto = EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID;
 struct screen_info *si;
 efi_guid_t uga_proto = EFI_UGA_PROTOCOL_GUID;
 efi_status_t status;
 unsigned long size;
 void **gop_handle = ((void*)0);
 void **uga_handle = ((void*)0);

 si = &boot_params->screen_info;
 memset(si, 0, sizeof(*si));

 size = 0;
 status = efi_call_early(locate_handle,
    EFI_LOCATE_BY_PROTOCOL,
    &graphics_proto, ((void*)0), &size, gop_handle);
 if (status == EFI_BUFFER_TOO_SMALL)
  status = efi_setup_gop(((void*)0), si, &graphics_proto, size);

 if (status != EFI_SUCCESS) {
  size = 0;
  status = efi_call_early(locate_handle,
     EFI_LOCATE_BY_PROTOCOL,
     &uga_proto, ((void*)0), &size, uga_handle);
  if (status == EFI_BUFFER_TOO_SMALL)
   setup_uga(si, &uga_proto, size);
 }
}

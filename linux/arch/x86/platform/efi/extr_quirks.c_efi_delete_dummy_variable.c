
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int efi_char16_t ;
struct TYPE_2__ {int (* set_variable_nonblocking ) (int *,int *,int,int ,int *) ;} ;


 int EFI_DUMMY_GUID ;
 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_NON_VOLATILE ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 TYPE_1__ efi ;
 scalar_t__ efi_dummy_name ;
 int stub1 (int *,int *,int,int ,int *) ;

void efi_delete_dummy_variable(void)
{
 efi.set_variable_nonblocking((efi_char16_t *)efi_dummy_name,
         &EFI_DUMMY_GUID,
         EFI_VARIABLE_NON_VOLATILE |
         EFI_VARIABLE_BOOTSERVICE_ACCESS |
         EFI_VARIABLE_RUNTIME_ACCESS, 0, ((void*)0));
}

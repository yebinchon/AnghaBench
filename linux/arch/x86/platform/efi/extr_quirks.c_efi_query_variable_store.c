
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef int u32 ;
typedef scalar_t__ efi_status_t ;
typedef int efi_char16_t ;
struct TYPE_2__ {scalar_t__ (* query_variable_info ) (int,unsigned long*,unsigned long*,unsigned long*) ;scalar_t__ (* set_variable ) (int *,int *,int,unsigned long,void*) ;} ;


 int EFI_DUMMY_GUID ;
 unsigned long EFI_MIN_RESERVE ;
 scalar_t__ EFI_OUT_OF_RESOURCES ;
 scalar_t__ EFI_SUCCESS ;
 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_NON_VOLATILE ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 int GFP_KERNEL ;
 TYPE_1__ efi ;
 int efi_delete_dummy_variable () ;
 scalar_t__ efi_dummy_name ;
 int efi_no_storage_paranoia ;
 int kfree (void*) ;
 void* kzalloc (unsigned long,int ) ;
 scalar_t__ query_variable_store_nonblocking (int,unsigned long) ;
 scalar_t__ stub1 (int,unsigned long*,unsigned long*,unsigned long*) ;
 scalar_t__ stub2 (int *,int *,int,unsigned long,void*) ;
 scalar_t__ stub3 (int,unsigned long*,unsigned long*,unsigned long*) ;

efi_status_t efi_query_variable_store(u32 attributes, unsigned long size,
          bool nonblocking)
{
 efi_status_t status;
 u64 storage_size, remaining_size, max_size;

 if (!(attributes & EFI_VARIABLE_NON_VOLATILE))
  return 0;

 if (nonblocking)
  return query_variable_store_nonblocking(attributes, size);

 status = efi.query_variable_info(attributes, &storage_size,
      &remaining_size, &max_size);
 if (status != EFI_SUCCESS)
  return status;






 if ((remaining_size - size < EFI_MIN_RESERVE) &&
  !efi_no_storage_paranoia) {






  unsigned long dummy_size = remaining_size + 1024;
  void *dummy = kzalloc(dummy_size, GFP_KERNEL);

  if (!dummy)
   return EFI_OUT_OF_RESOURCES;

  status = efi.set_variable((efi_char16_t *)efi_dummy_name,
       &EFI_DUMMY_GUID,
       EFI_VARIABLE_NON_VOLATILE |
       EFI_VARIABLE_BOOTSERVICE_ACCESS |
       EFI_VARIABLE_RUNTIME_ACCESS,
       dummy_size, dummy);

  if (status == EFI_SUCCESS) {




   efi_delete_dummy_variable();
  }

  kfree(dummy);





  status = efi.query_variable_info(attributes, &storage_size,
       &remaining_size, &max_size);

  if (status != EFI_SUCCESS)
   return status;




  if (remaining_size - size < EFI_MIN_RESERVE)
   return EFI_OUT_OF_RESOURCES;
 }

 return EFI_SUCCESS;
}

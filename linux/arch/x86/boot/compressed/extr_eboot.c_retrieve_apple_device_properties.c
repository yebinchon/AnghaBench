
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct setup_data {long next; int len; int type; int * data; } ;
struct TYPE_2__ {unsigned long setup_data; } ;
struct boot_params {TYPE_1__ hdr; } ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;


 int APPLE_PROPERTIES_PROTOCOL_GUID ;
 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 int EFI_LOADER_DATA ;
 scalar_t__ EFI_SUCCESS ;
 int SETUP_APPLE_PROPERTIES ;
 int allocate_pool ;
 int apple_properties_protocol ;
 scalar_t__ efi_call_early (int ,struct setup_data*,...) ;
 scalar_t__ efi_call_proto (int ,int ,void*,int *,int *) ;
 int efi_printk (int ,char*) ;
 int efi_table_attr (int ,int ,void*) ;
 int free_pool ;
 int get_all ;
 int locate_protocol ;
 int sys_table ;
 int version ;

__attribute__((used)) static void retrieve_apple_device_properties(struct boot_params *boot_params)
{
 efi_guid_t guid = APPLE_PROPERTIES_PROTOCOL_GUID;
 struct setup_data *data, *new;
 efi_status_t status;
 u32 size = 0;
 void *p;

 status = efi_call_early(locate_protocol, &guid, ((void*)0), &p);
 if (status != EFI_SUCCESS)
  return;

 if (efi_table_attr(apple_properties_protocol, version, p) != 0x10000) {
  efi_printk(sys_table, "Unsupported properties proto version\n");
  return;
 }

 efi_call_proto(apple_properties_protocol, get_all, p, ((void*)0), &size);
 if (!size)
  return;

 do {
  status = efi_call_early(allocate_pool, EFI_LOADER_DATA,
     size + sizeof(struct setup_data), &new);
  if (status != EFI_SUCCESS) {
   efi_printk(sys_table, "Failed to allocate memory for 'properties'\n");
   return;
  }

  status = efi_call_proto(apple_properties_protocol, get_all, p,
     new->data, &size);

  if (status == EFI_BUFFER_TOO_SMALL)
   efi_call_early(free_pool, new);
 } while (status == EFI_BUFFER_TOO_SMALL);

 new->type = SETUP_APPLE_PROPERTIES;
 new->len = size;
 new->next = 0;

 data = (struct setup_data *)(unsigned long)boot_params->hdr.setup_data;
 if (!data) {
  boot_params->hdr.setup_data = (unsigned long)new;
 } else {
  while (data->next)
   data = (struct setup_data *)(unsigned long)data->next;
  data->next = (unsigned long)new;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct setup_data {unsigned long next; } ;
struct pci_setup_rom {int dummy; } ;
struct TYPE_2__ {unsigned long setup_data; } ;
struct boot_params {TYPE_1__ hdr; } ;
typedef scalar_t__ efi_status_t ;
typedef int efi_pci_io_protocol_t ;
typedef int efi_guid_t ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 int EFI_LOADER_DATA ;
 int EFI_LOCATE_BY_PROTOCOL ;
 int EFI_PCI_IO_PROTOCOL_GUID ;
 scalar_t__ EFI_SUCCESS ;
 int allocate_pool ;
 scalar_t__ efi_call_early (int ,void**,...) ;
 scalar_t__ efi_is_64bit () ;
 int efi_printk (int ,char*) ;
 int free_pool ;
 int handle_protocol ;
 int locate_handle ;
 scalar_t__ preserve_pci_rom_image (int *,struct pci_setup_rom**) ;
 int sys_table ;

__attribute__((used)) static void setup_efi_pci(struct boot_params *params)
{
 efi_status_t status;
 void **pci_handle = ((void*)0);
 efi_guid_t pci_proto = EFI_PCI_IO_PROTOCOL_GUID;
 unsigned long size = 0;
 unsigned long nr_pci;
 struct setup_data *data;
 int i;

 status = efi_call_early(locate_handle,
    EFI_LOCATE_BY_PROTOCOL,
    &pci_proto, ((void*)0), &size, pci_handle);

 if (status == EFI_BUFFER_TOO_SMALL) {
  status = efi_call_early(allocate_pool,
     EFI_LOADER_DATA,
     size, (void **)&pci_handle);

  if (status != EFI_SUCCESS) {
   efi_printk(sys_table, "Failed to allocate memory for 'pci_handle'\n");
   return;
  }

  status = efi_call_early(locate_handle,
     EFI_LOCATE_BY_PROTOCOL, &pci_proto,
     ((void*)0), &size, pci_handle);
 }

 if (status != EFI_SUCCESS)
  goto free_handle;

 data = (struct setup_data *)(unsigned long)params->hdr.setup_data;

 while (data && data->next)
  data = (struct setup_data *)(unsigned long)data->next;

 nr_pci = size / (efi_is_64bit() ? sizeof(u64) : sizeof(u32));
 for (i = 0; i < nr_pci; i++) {
  efi_pci_io_protocol_t *pci = ((void*)0);
  struct pci_setup_rom *rom;

  status = efi_call_early(handle_protocol,
     efi_is_64bit() ? ((u64 *)pci_handle)[i]
             : ((u32 *)pci_handle)[i],
     &pci_proto, (void **)&pci);
  if (status != EFI_SUCCESS || !pci)
   continue;

  status = preserve_pci_rom_image(pci, &rom);
  if (status != EFI_SUCCESS)
   continue;

  if (data)
   data->next = (unsigned long)rom;
  else
   params->hdr.setup_data = (unsigned long)rom;

  data = (struct setup_data *)rom;
 }

free_handle:
 efi_call_early(free_pool, pci_handle);
}

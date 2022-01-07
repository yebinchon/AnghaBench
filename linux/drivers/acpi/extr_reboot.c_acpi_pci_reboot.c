
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_generic_address {int dummy; } ;


 int pr_warn_once (char*) ;

__attribute__((used)) static inline void acpi_pci_reboot(struct acpi_generic_address *rr,
       u8 reset_value)
{
 pr_warn_once("PCI configuration space access is not supported\n");
}

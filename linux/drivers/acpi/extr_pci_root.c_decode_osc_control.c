
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pci_root {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int decode_osc_bits (struct acpi_pci_root*,char*,int ,int ,int ) ;
 int pci_osc_control_bit ;

__attribute__((used)) static void decode_osc_control(struct acpi_pci_root *root, char *msg, u32 word)
{
 decode_osc_bits(root, msg, word, pci_osc_control_bit,
   ARRAY_SIZE(pci_osc_control_bit));
}

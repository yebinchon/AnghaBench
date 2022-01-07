
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_osc_bit_struct {int bit; int desc; } ;
struct acpi_pci_root {TYPE_1__* device; } ;
typedef int buf ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,char*,char*) ;
 scalar_t__ snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static void decode_osc_bits(struct acpi_pci_root *root, char *msg, u32 word,
       struct pci_osc_bit_struct *table, int size)
{
 char buf[80];
 int i, len = 0;
 struct pci_osc_bit_struct *entry;

 buf[0] = '\0';
 for (i = 0, entry = table; i < size; i++, entry++)
  if (word & entry->bit)
   len += snprintf(buf + len, sizeof(buf) - len, "%s%s",
     len ? " " : "", entry->desc);

 dev_info(&root->device->dev, "_OSC: %s [%s]\n", msg, buf);
}

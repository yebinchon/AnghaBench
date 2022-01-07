
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct acpi_nfit_desc {int platform_cap; struct device* dev; } ;
struct acpi_nfit_capabilities {int highest_capability; int capabilities; } ;


 int dev_dbg (struct device*,char*,int) ;

__attribute__((used)) static bool add_platform_cap(struct acpi_nfit_desc *acpi_desc,
  struct acpi_nfit_capabilities *pcap)
{
 struct device *dev = acpi_desc->dev;
 u32 mask;

 mask = (1 << (pcap->highest_capability + 1)) - 1;
 acpi_desc->platform_cap = pcap->capabilities & mask;
 dev_dbg(dev, "cap: %#x\n", acpi_desc->platform_cap);
 return 1;
}

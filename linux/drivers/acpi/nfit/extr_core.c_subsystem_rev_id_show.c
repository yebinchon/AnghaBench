
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_control_region {int subsystem_revision_id; } ;
typedef int ssize_t ;


 int be16_to_cpu (int ) ;
 int sprintf (char*,char*,int) ;
 struct acpi_nfit_control_region* to_nfit_dcr (struct device*) ;

__attribute__((used)) static ssize_t subsystem_rev_id_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct acpi_nfit_control_region *dcr = to_nfit_dcr(dev);

 return sprintf(buf, "0x%04x\n",
   be16_to_cpu(dcr->subsystem_revision_id));
}

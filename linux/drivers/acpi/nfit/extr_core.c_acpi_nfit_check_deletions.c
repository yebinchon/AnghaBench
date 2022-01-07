
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_table_prev {int flushes; int idts; int bdws; int dcrs; int memdevs; int spas; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {struct device* dev; } ;


 int ENXIO ;
 int dev_err (struct device*,char*) ;
 int list_empty (int *) ;

__attribute__((used)) static int acpi_nfit_check_deletions(struct acpi_nfit_desc *acpi_desc,
  struct nfit_table_prev *prev)
{
 struct device *dev = acpi_desc->dev;

 if (!list_empty(&prev->spas) ||
   !list_empty(&prev->memdevs) ||
   !list_empty(&prev->dcrs) ||
   !list_empty(&prev->bdws) ||
   !list_empty(&prev->idts) ||
   !list_empty(&prev->flushes)) {
  dev_err(dev, "new nfit deletes entries (unsupported)\n");
  return -ENXIO;
 }
 return 0;
}

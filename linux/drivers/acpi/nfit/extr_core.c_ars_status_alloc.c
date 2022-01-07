
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_cmd_ars_status {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {struct nd_cmd_ars_status* ars_status; int max_ars; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nd_cmd_ars_status* devm_kzalloc (struct device*,int ,int ) ;
 int memset (struct nd_cmd_ars_status*,int ,int ) ;

__attribute__((used)) static int ars_status_alloc(struct acpi_nfit_desc *acpi_desc)
{
 struct device *dev = acpi_desc->dev;
 struct nd_cmd_ars_status *ars_status;

 if (acpi_desc->ars_status) {
  memset(acpi_desc->ars_status, 0, acpi_desc->max_ars);
  return 0;
 }

 ars_status = devm_kzalloc(dev, acpi_desc->max_ars, GFP_KERNEL);
 if (!ars_status)
  return -ENOMEM;
 acpi_desc->ars_status = ars_status;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_nfit_desc {int dev; } ;


 int ENOMEM ;
 int ENOSPC ;
 int ars_get_status (struct acpi_nfit_desc*) ;
 scalar_t__ ars_status_alloc (struct acpi_nfit_desc*) ;
 scalar_t__ ars_status_process_records (struct acpi_nfit_desc*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int acpi_nfit_query_poison(struct acpi_nfit_desc *acpi_desc)
{
 int rc;

 if (ars_status_alloc(acpi_desc))
  return -ENOMEM;

 rc = ars_get_status(acpi_desc);

 if (rc < 0 && rc != -ENOSPC)
  return rc;

 if (ars_status_process_records(acpi_desc))
  dev_err(acpi_desc->dev, "Failed to process ARS records\n");

 return rc;
}

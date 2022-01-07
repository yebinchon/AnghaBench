
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
union acpi_object {TYPE_1__ integer; } ;
struct tpm_chip {int acpi_dev_handle; } ;


 int ACPI_FREE (union acpi_object*) ;
 int CRB_ACPI_START_INDEX ;
 int CRB_ACPI_START_REVISION_ID ;
 int ENXIO ;
 union acpi_object* acpi_evaluate_dsm (int ,int *,int ,int ,int *) ;
 int crb_acpi_start_guid ;

__attribute__((used)) static int crb_do_acpi_start(struct tpm_chip *chip)
{
 union acpi_object *obj;
 int rc;

 obj = acpi_evaluate_dsm(chip->acpi_dev_handle,
    &crb_acpi_start_guid,
    CRB_ACPI_START_REVISION_ID,
    CRB_ACPI_START_INDEX,
    ((void*)0));
 if (!obj)
  return -ENXIO;
 rc = obj->integer.value == 0 ? 0 : -ENXIO;
 ACPI_FREE(obj);
 return rc;
}

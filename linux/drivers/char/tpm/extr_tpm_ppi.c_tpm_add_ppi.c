
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pointer; } ;
union acpi_object {TYPE_1__ string; } ;
struct tpm_chip {int groups_cnt; int ** groups; int ppi_version; int acpi_dev_handle; } ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_STRING ;
 int TPM_PPI_FN_VERSION ;
 int TPM_PPI_REVISION_ID_1 ;
 int acpi_check_dsm (int ,int *,int ,int) ;
 union acpi_object* acpi_evaluate_dsm_typed (int ,int *,int ,int,int *,int ) ;
 int ppi_attr_grp ;
 int strlcpy (int ,int ,int) ;
 int tpm_ppi_guid ;

void tpm_add_ppi(struct tpm_chip *chip)
{
 union acpi_object *obj;

 if (!chip->acpi_dev_handle)
  return;

 if (!acpi_check_dsm(chip->acpi_dev_handle, &tpm_ppi_guid,
       TPM_PPI_REVISION_ID_1, 1 << TPM_PPI_FN_VERSION))
  return;


 obj = acpi_evaluate_dsm_typed(chip->acpi_dev_handle, &tpm_ppi_guid,
          TPM_PPI_REVISION_ID_1,
          TPM_PPI_FN_VERSION,
          ((void*)0), ACPI_TYPE_STRING);
 if (obj) {
  strlcpy(chip->ppi_version, obj->string.pointer,
   sizeof(chip->ppi_version));
  ACPI_FREE(obj);
 }

 chip->groups[chip->groups_cnt++] = &ppi_attr_grp;
}

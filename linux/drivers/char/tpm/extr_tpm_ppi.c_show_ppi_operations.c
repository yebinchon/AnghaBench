
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int type; } ;
union acpi_object {TYPE_1__ integer; } ;
typedef int u32 ;
typedef int ssize_t ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 union acpi_object ACPI_INIT_DSM_ARGV4 (int,union acpi_object*) ;
 int ACPI_TYPE_INTEGER ;
 int ARRAY_SIZE (char**) ;
 int ENOMEM ;
 int EPERM ;
 int PAGE_SIZE ;
 int TPM_PPI_FN_GETOPR ;
 int TPM_PPI_REVISION_ID_1 ;
 int acpi_check_dsm (int ,int *,int ,int) ;
 int scnprintf (char*,int ,char*,int,int,char*) ;
 union acpi_object* tpm_eval_dsm (int ,int,int ,union acpi_object*,int ) ;
 int tpm_ppi_guid ;

__attribute__((used)) static ssize_t show_ppi_operations(acpi_handle dev_handle, char *buf, u32 start,
       u32 end)
{
 int i;
 u32 ret;
 char *str = buf;
 union acpi_object *obj, tmp;
 union acpi_object argv = ACPI_INIT_DSM_ARGV4(1, &tmp);

 static char *info[] = {
  "Not implemented",
  "BIOS only",
  "Blocked for OS by BIOS",
  "User required",
  "User not required",
 };

 if (!acpi_check_dsm(dev_handle, &tpm_ppi_guid, TPM_PPI_REVISION_ID_1,
       1 << TPM_PPI_FN_GETOPR))
  return -EPERM;

 tmp.integer.type = ACPI_TYPE_INTEGER;
 for (i = start; i <= end; i++) {
  tmp.integer.value = i;
  obj = tpm_eval_dsm(dev_handle, TPM_PPI_FN_GETOPR,
       ACPI_TYPE_INTEGER, &argv,
       TPM_PPI_REVISION_ID_1);
  if (!obj) {
   return -ENOMEM;
  } else {
   ret = obj->integer.value;
   ACPI_FREE(obj);
  }

  if (ret > 0 && ret < ARRAY_SIZE(info))
   str += scnprintf(str, PAGE_SIZE, "%d %d: %s\n",
      i, ret, info[ret]);
 }

 return str - buf;
}

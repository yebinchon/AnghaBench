
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int * pointer; int length; int type; } ;
union acpi_object {TYPE_2__ integer; TYPE_1__ buffer; } ;
typedef int u32 ;
struct tpm_chip {int acpi_dev_handle; int ppi_version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int acpi_status ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_BUFFER ;
 int ACPI_TYPE_INTEGER ;
 int ARRAY_SIZE (char**) ;
 int ENXIO ;
 int PAGE_SIZE ;
 int TPM_PPI_FN_GETACT ;
 int TPM_PPI_REVISION_ID_1 ;
 int scnprintf (char*,int ,char*,int,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;
 union acpi_object* tpm_eval_dsm (int ,int ,int ,union acpi_object*,int ) ;

__attribute__((used)) static ssize_t tpm_show_ppi_transition_action(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 u32 ret;
 acpi_status status;
 union acpi_object *obj = ((void*)0);
 union acpi_object tmp = {
  .buffer.type = ACPI_TYPE_BUFFER,
  .buffer.length = 0,
  .buffer.pointer = ((void*)0)
 };
 struct tpm_chip *chip = to_tpm_chip(dev);

 static char *info[] = {
  "None",
  "Shutdown",
  "Reboot",
  "OS Vendor-specific",
  "Error",
 };






 if (strcmp(chip->ppi_version, "1.2") < 0)
  obj = &tmp;
 obj = tpm_eval_dsm(chip->acpi_dev_handle, TPM_PPI_FN_GETACT,
      ACPI_TYPE_INTEGER, obj, TPM_PPI_REVISION_ID_1);
 if (!obj) {
  return -ENXIO;
 } else {
  ret = obj->integer.value;
  ACPI_FREE(obj);
 }

 if (ret < ARRAY_SIZE(info) - 1)
  status = scnprintf(buf, PAGE_SIZE, "%d: %s\n", ret, info[ret]);
 else
  status = scnprintf(buf, PAGE_SIZE, "%d: %s\n", ret,
       info[ARRAY_SIZE(info)-1]);
 return status;
}

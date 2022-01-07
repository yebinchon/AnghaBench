
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
typedef scalar_t__ u64 ;
struct tpm_chip {int acpi_dev_handle; int ppi_version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ integer; } ;


 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int EFAULT ;
 int EINVAL ;
 int ENXIO ;
 int PAGE_SIZE ;
 int TPM_PPI_FN_GETREQ ;
 scalar_t__ TPM_PPI_REVISION_ID_1 ;
 scalar_t__ TPM_PPI_REVISION_ID_2 ;
 int scnprintf (char*,int ,char*,scalar_t__,...) ;
 scalar_t__ strcmp (int ,char*) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;
 union acpi_object* tpm_eval_dsm (int ,int ,int ,int *,scalar_t__) ;
 scalar_t__ tpm_ppi_req_has_parameter (scalar_t__) ;

__attribute__((used)) static ssize_t tpm_show_ppi_request(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 ssize_t size = -EINVAL;
 union acpi_object *obj;
 struct tpm_chip *chip = to_tpm_chip(dev);
 u64 rev = TPM_PPI_REVISION_ID_2;
 u64 req;

 if (strcmp(chip->ppi_version, "1.2") < 0)
  rev = TPM_PPI_REVISION_ID_1;

 obj = tpm_eval_dsm(chip->acpi_dev_handle, TPM_PPI_FN_GETREQ,
      ACPI_TYPE_PACKAGE, ((void*)0), rev);
 if (!obj)
  return -ENXIO;







 if (obj->package.count == 3 &&
     obj->package.elements[0].type == ACPI_TYPE_INTEGER &&
     obj->package.elements[1].type == ACPI_TYPE_INTEGER &&
     obj->package.elements[2].type == ACPI_TYPE_INTEGER) {
  if (obj->package.elements[0].integer.value)
   size = -EFAULT;
  else {
   req = obj->package.elements[1].integer.value;
   if (tpm_ppi_req_has_parameter(req))
    size = scnprintf(buf, PAGE_SIZE,
        "%llu %llu\n", req,
        obj->package.elements[2].integer.value);
   else
    size = scnprintf(buf, PAGE_SIZE,
      "%llu\n", req);
  }
 } else if (obj->package.count == 2 &&
     obj->package.elements[0].type == ACPI_TYPE_INTEGER &&
     obj->package.elements[1].type == ACPI_TYPE_INTEGER) {
  if (obj->package.elements[0].integer.value)
   size = -EFAULT;
  else
   size = scnprintf(buf, PAGE_SIZE, "%llu\n",
     obj->package.elements[1].integer.value);
 }

 ACPI_FREE(obj);

 return size;
}

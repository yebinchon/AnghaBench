
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * elements; } ;
union acpi_object {scalar_t__ num_entries; scalar_t__ revision; scalar_t__ coord_type; TYPE_1__ package; } ;
struct cpc_desc {int cpu_id; union acpi_object domain_info; } ;
struct acpi_psd_package {scalar_t__ num_entries; scalar_t__ revision; scalar_t__ coord_type; TYPE_1__ package; } ;
struct acpi_buffer {int member_0; char* member_1; int length; union acpi_object* pointer; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ ACPI_PSD_REV0_ENTRIES ;
 scalar_t__ ACPI_PSD_REV0_REVISION ;
 int ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 scalar_t__ DOMAIN_COORD_TYPE_HW_ALL ;
 scalar_t__ DOMAIN_COORD_TYPE_SW_ALL ;
 scalar_t__ DOMAIN_COORD_TYPE_SW_ANY ;
 int EFAULT ;
 int ENODEV ;
 scalar_t__ acpi_evaluate_object_typed (int ,char*,int *,struct acpi_buffer*,int ) ;
 scalar_t__ acpi_extract_package (int *,struct acpi_buffer*,struct acpi_buffer*) ;
 int kfree (union acpi_object*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int acpi_get_psd(struct cpc_desc *cpc_ptr, acpi_handle handle)
{
 int result = -EFAULT;
 acpi_status status = AE_OK;
 struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 struct acpi_buffer format = {sizeof("NNNNN"), "NNNNN"};
 struct acpi_buffer state = {0, ((void*)0)};
 union acpi_object *psd = ((void*)0);
 struct acpi_psd_package *pdomain;

 status = acpi_evaluate_object_typed(handle, "_PSD", ((void*)0),
         &buffer, ACPI_TYPE_PACKAGE);
 if (status == AE_NOT_FOUND)
  return 0;
 if (ACPI_FAILURE(status))
  return -ENODEV;

 psd = buffer.pointer;
 if (!psd || psd->package.count != 1) {
  pr_debug("Invalid _PSD data\n");
  goto end;
 }

 pdomain = &(cpc_ptr->domain_info);

 state.length = sizeof(struct acpi_psd_package);
 state.pointer = pdomain;

 status = acpi_extract_package(&(psd->package.elements[0]),
  &format, &state);
 if (ACPI_FAILURE(status)) {
  pr_debug("Invalid _PSD data for CPU:%d\n", cpc_ptr->cpu_id);
  goto end;
 }

 if (pdomain->num_entries != ACPI_PSD_REV0_ENTRIES) {
  pr_debug("Unknown _PSD:num_entries for CPU:%d\n", cpc_ptr->cpu_id);
  goto end;
 }

 if (pdomain->revision != ACPI_PSD_REV0_REVISION) {
  pr_debug("Unknown _PSD:revision for CPU: %d\n", cpc_ptr->cpu_id);
  goto end;
 }

 if (pdomain->coord_type != DOMAIN_COORD_TYPE_SW_ALL &&
     pdomain->coord_type != DOMAIN_COORD_TYPE_SW_ANY &&
     pdomain->coord_type != DOMAIN_COORD_TYPE_HW_ALL) {
  pr_debug("Invalid _PSD:coord_type for CPU:%d\n", cpc_ptr->cpu_id);
  goto end;
 }

 result = 0;
end:
 kfree(buffer.pointer);
 return result;
}

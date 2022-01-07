
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ node; } ;
union acpi_generic_state {TYPE_1__ scope; } ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_UINT32_MAX ;
 int TRUE ;
 int acpi_ns_externalize_name (int ,char const*,int *,char**) ;
 char* acpi_ns_get_normalized_pathname (scalar_t__,int ) ;
 int acpi_ns_normalize_pathname (char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

char *acpi_ns_build_prefixed_pathname(union acpi_generic_state *prefix_scope,
          const char *internal_path)
{
 acpi_status status;
 char *full_path = ((void*)0);
 char *external_path = ((void*)0);
 char *prefix_path = ((void*)0);
 u32 prefix_path_length = 0;



 if (prefix_scope && prefix_scope->scope.node) {
  prefix_path =
      acpi_ns_get_normalized_pathname(prefix_scope->scope.node,
          TRUE);
  if (prefix_path) {
   prefix_path_length = strlen(prefix_path);
  }
 }

 status = acpi_ns_externalize_name(ACPI_UINT32_MAX, internal_path,
       ((void*)0), &external_path);
 if (ACPI_FAILURE(status)) {
  goto cleanup;
 }



 full_path =
     ACPI_ALLOCATE_ZEROED(prefix_path_length + strlen(external_path) +
     2);
 if (!full_path) {
  goto cleanup;
 }



 if (prefix_path && (*external_path != '\\') && (*external_path != '^')) {
  strcat(full_path, prefix_path);
  if (prefix_path[1]) {
   strcat(full_path, ".");
  }
 }

 acpi_ns_normalize_pathname(external_path);
 strcat(full_path, external_path);

cleanup:
 if (prefix_path) {
  ACPI_FREE(prefix_path);
 }
 if (external_path) {
  ACPI_FREE(external_path);
 }

 return (full_path);
}

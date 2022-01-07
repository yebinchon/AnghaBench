
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
typedef int u64 ;
typedef int acpi_object_type ;
typedef int acpi_handle ;


 int BUG_ON (int) ;
 union acpi_object* acpi_evaluate_dsm_typed (int ,int *,int ,int,union acpi_object*,int ) ;
 int tpm_ppi_guid ;

__attribute__((used)) static inline union acpi_object *
tpm_eval_dsm(acpi_handle ppi_handle, int func, acpi_object_type type,
      union acpi_object *argv4, u64 rev)
{
 BUG_ON(!ppi_handle);
 return acpi_evaluate_dsm_typed(ppi_handle, &tpm_ppi_guid,
           rev, func, argv4, type);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int hp_ccsr_locate (int ,int *,int *) ;
 int hp_crs_locate (int ,int *,int *) ;

acpi_status hp_acpi_csr_space(acpi_handle obj, u64 *csr_base, u64 *csr_length)
{
 acpi_status status;

 status = hp_ccsr_locate(obj, csr_base, csr_length);
 if (ACPI_SUCCESS(status))
  return status;

 return hp_crs_locate(obj, csr_base, csr_length);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_nfit_system_address {int dummy; } ;


 scalar_t__ NFIT_SPA_PCD ;
 scalar_t__ NFIT_SPA_PDISK ;
 scalar_t__ NFIT_SPA_VCD ;
 scalar_t__ NFIT_SPA_VDISK ;
 scalar_t__ nfit_spa_type (struct acpi_nfit_system_address*) ;

__attribute__((used)) static bool nfit_spa_is_virtual(struct acpi_nfit_system_address *spa)
{
 return (nfit_spa_type(spa) == NFIT_SPA_VDISK ||
  nfit_spa_type(spa) == NFIT_SPA_VCD ||
  nfit_spa_type(spa) == NFIT_SPA_PDISK ||
  nfit_spa_type(spa) == NFIT_SPA_PCD);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_spa {int ars_state; int max_ars; int clear_err_unit; int spa; } ;
struct nd_cmd_ars_cap {int status; int clear_err_unit; int max_ars_out; } ;
struct acpi_nfit_desc {int max_ars; } ;
typedef int ars_cap ;


 int ARS_FAILED ;
 int ND_ARS_PERSISTENT ;
 int ND_ARS_VOLATILE ;
 int NFIT_SPA_PM ;
 int NFIT_SPA_VOLATILE ;
 int ars_get_cap (struct acpi_nfit_desc*,struct nd_cmd_ars_cap*,struct nfit_spa*) ;
 int clear_bit (int ,int *) ;
 int max (int ,int ) ;
 int memset (struct nd_cmd_ars_cap*,int ,int) ;
 int nfit_spa_type (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void acpi_nfit_init_ars(struct acpi_nfit_desc *acpi_desc,
  struct nfit_spa *nfit_spa)
{
 int type = nfit_spa_type(nfit_spa->spa);
 struct nd_cmd_ars_cap ars_cap;
 int rc;

 set_bit(ARS_FAILED, &nfit_spa->ars_state);
 memset(&ars_cap, 0, sizeof(ars_cap));
 rc = ars_get_cap(acpi_desc, &ars_cap, nfit_spa);
 if (rc < 0)
  return;

 if (type == NFIT_SPA_VOLATILE && ((ars_cap.status >> 16)
    & ND_ARS_VOLATILE) == 0)
  return;
 if (type == NFIT_SPA_PM && ((ars_cap.status >> 16)
    & ND_ARS_PERSISTENT) == 0)
  return;

 nfit_spa->max_ars = ars_cap.max_ars_out;
 nfit_spa->clear_err_unit = ars_cap.clear_err_unit;
 acpi_desc->max_ars = max(nfit_spa->max_ars, acpi_desc->max_ars);
 clear_bit(ARS_FAILED, &nfit_spa->ars_state);
}

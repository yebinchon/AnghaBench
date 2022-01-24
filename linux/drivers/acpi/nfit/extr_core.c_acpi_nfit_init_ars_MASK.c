#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfit_spa {int /*<<< orphan*/  ars_state; int /*<<< orphan*/  max_ars; int /*<<< orphan*/  clear_err_unit; int /*<<< orphan*/  spa; } ;
struct nd_cmd_ars_cap {int status; int /*<<< orphan*/  clear_err_unit; int /*<<< orphan*/  max_ars_out; } ;
struct acpi_nfit_desc {int /*<<< orphan*/  max_ars; } ;
typedef  int /*<<< orphan*/  ars_cap ;

/* Variables and functions */
 int /*<<< orphan*/  ARS_FAILED ; 
 int ND_ARS_PERSISTENT ; 
 int ND_ARS_VOLATILE ; 
 int NFIT_SPA_PM ; 
 int NFIT_SPA_VOLATILE ; 
 int FUNC0 (struct acpi_nfit_desc*,struct nd_cmd_ars_cap*,struct nfit_spa*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_cmd_ars_cap*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct acpi_nfit_desc *acpi_desc,
		struct nfit_spa *nfit_spa)
{
	int type = FUNC4(nfit_spa->spa);
	struct nd_cmd_ars_cap ars_cap;
	int rc;

	FUNC5(ARS_FAILED, &nfit_spa->ars_state);
	FUNC3(&ars_cap, 0, sizeof(ars_cap));
	rc = FUNC0(acpi_desc, &ars_cap, nfit_spa);
	if (rc < 0)
		return;
	/* check that the supported scrub types match the spa type */
	if (type == NFIT_SPA_VOLATILE && ((ars_cap.status >> 16)
				& ND_ARS_VOLATILE) == 0)
		return;
	if (type == NFIT_SPA_PM && ((ars_cap.status >> 16)
				& ND_ARS_PERSISTENT) == 0)
		return;

	nfit_spa->max_ars = ars_cap.max_ars_out;
	nfit_spa->clear_err_unit = ars_cap.clear_err_unit;
	acpi_desc->max_ars = FUNC2(nfit_spa->max_ars, acpi_desc->max_ars);
	FUNC1(ARS_FAILED, &nfit_spa->ars_state);
}
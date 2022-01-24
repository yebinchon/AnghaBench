#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfit_table_prev {int /*<<< orphan*/  flushes; int /*<<< orphan*/  idts; int /*<<< orphan*/  bdws; int /*<<< orphan*/  dcrs; int /*<<< orphan*/  memdevs; int /*<<< orphan*/  spas; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prev; } ;
struct acpi_nfit_desc {int /*<<< orphan*/  init_mutex; TYPE_1__ flushes; TYPE_1__ idts; TYPE_1__ bdws; TYPE_1__ dcrs; TYPE_1__ memdevs; TYPE_1__ spas; int /*<<< orphan*/  list; int /*<<< orphan*/  nvdimm_bus; int /*<<< orphan*/  nd_desc; struct device* dev; } ;
typedef  int acpi_size ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  acpi_desc_lock ; 
 int /*<<< orphan*/  acpi_descs ; 
 int FUNC4 (struct acpi_nfit_desc*,struct nfit_table_prev*) ; 
 int FUNC5 (struct acpi_nfit_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_nfit_desc*) ; 
 int FUNC7 (struct acpi_nfit_desc*) ; 
 int FUNC8 (struct acpi_nfit_desc*) ; 
 int /*<<< orphan*/  acpi_nfit_unregister ; 
 void* FUNC9 (struct acpi_nfit_desc*,struct nfit_table_prev*,void*,void const*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,int) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ,struct acpi_nfit_desc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct acpi_nfit_desc*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC18(struct acpi_nfit_desc *acpi_desc, void *data, acpi_size sz)
{
	struct device *dev = acpi_desc->dev;
	struct nfit_table_prev prev;
	const void *end;
	int rc;

	if (!acpi_desc->nvdimm_bus) {
		FUNC6(acpi_desc);

		acpi_desc->nvdimm_bus = FUNC17(dev,
				&acpi_desc->nd_desc);
		if (!acpi_desc->nvdimm_bus)
			return -ENOMEM;

		rc = FUNC11(dev, acpi_nfit_unregister,
				acpi_desc);
		if (rc)
			return rc;

		rc = FUNC5(acpi_desc);
		if (rc)
			return rc;

		/* register this acpi_desc for mce notifications */
		FUNC14(&acpi_desc_lock);
		FUNC12(&acpi_desc->list, &acpi_descs);
		FUNC15(&acpi_desc_lock);
	}

	FUNC14(&acpi_desc->init_mutex);

	FUNC0(&prev.spas);
	FUNC0(&prev.memdevs);
	FUNC0(&prev.dcrs);
	FUNC0(&prev.bdws);
	FUNC0(&prev.idts);
	FUNC0(&prev.flushes);

	FUNC13(&prev.spas, &acpi_desc->spas,
				acpi_desc->spas.prev);
	FUNC13(&prev.memdevs, &acpi_desc->memdevs,
				acpi_desc->memdevs.prev);
	FUNC13(&prev.dcrs, &acpi_desc->dcrs,
				acpi_desc->dcrs.prev);
	FUNC13(&prev.bdws, &acpi_desc->bdws,
				acpi_desc->bdws.prev);
	FUNC13(&prev.idts, &acpi_desc->idts,
				acpi_desc->idts.prev);
	FUNC13(&prev.flushes, &acpi_desc->flushes,
				acpi_desc->flushes.prev);

	end = data + sz;
	while (!FUNC2(data))
		data = FUNC9(acpi_desc, &prev, data, end);

	if (FUNC1(data)) {
		FUNC10(dev, "nfit table parsing error: %ld\n",	FUNC3(data));
		rc = FUNC3(data);
		goto out_unlock;
	}

	rc = FUNC4(acpi_desc, &prev);
	if (rc)
		goto out_unlock;

	rc = FUNC16(acpi_desc);
	if (rc)
		goto out_unlock;

	rc = FUNC7(acpi_desc);
	if (rc)
		goto out_unlock;

	rc = FUNC8(acpi_desc);

 out_unlock:
	FUNC15(&acpi_desc->init_mutex);
	return rc;
}
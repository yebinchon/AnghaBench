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
typedef  int /*<<< orphan*/  win ;
struct resource {int dummy; } ;
struct resource_win {struct resource res; } ;
struct res_proc_context {int (* preproc ) (struct acpi_resource*,int /*<<< orphan*/ ) ;int error; int /*<<< orphan*/  preproc_data; } ;
struct acpi_resource {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (struct resource_win*,struct res_proc_context*) ; 
 scalar_t__ FUNC2 (struct acpi_resource*,struct resource_win*) ; 
 scalar_t__ FUNC3 (struct acpi_resource*,struct resource_win*) ; 
 scalar_t__ FUNC4 (struct acpi_resource*,int,struct resource*) ; 
 scalar_t__ FUNC5 (struct acpi_resource*,struct resource*) ; 
 scalar_t__ FUNC6 (struct acpi_resource*,struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource_win*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct acpi_resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status FUNC9(struct acpi_resource *ares,
					     void *context)
{
	struct res_proc_context *c = context;
	struct resource_win win;
	struct resource *res = &win.res;
	int i;

	if (c->preproc) {
		int ret;

		ret = c->preproc(ares, c->preproc_data);
		if (ret < 0) {
			c->error = ret;
			return AE_CTRL_TERMINATE;
		} else if (ret > 0) {
			return AE_OK;
		}
	}

	FUNC7(&win, 0, sizeof(win));

	if (FUNC6(ares, res)
	    || FUNC5(ares, res)
	    || FUNC2(ares, &win)
	    || FUNC3(ares, &win))
		return FUNC1(&win, c);

	for (i = 0; FUNC4(ares, i, res); i++) {
		acpi_status status;

		status = FUNC1(&win, c);
		if (FUNC0(status))
			return status;
	}

	return AE_OK;
}
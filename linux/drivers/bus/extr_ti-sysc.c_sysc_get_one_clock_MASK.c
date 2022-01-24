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
struct sysc {int /*<<< orphan*/  dev; scalar_t__* clocks; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 size_t SYSC_FCK ; 
 size_t SYSC_ICK ; 
 int SYSC_MAX_CLOCKS ; 
 int SYSC_OPTFCK0 ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * clock_names ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC6(struct sysc *ddata, const char *name)
{
	int error, i, index = -ENODEV;

	if (!FUNC5(clock_names[SYSC_FCK], name, 3))
		index = SYSC_FCK;
	else if (!FUNC5(clock_names[SYSC_ICK], name, 3))
		index = SYSC_ICK;

	if (index < 0) {
		for (i = SYSC_OPTFCK0; i < SYSC_MAX_CLOCKS; i++) {
			if (!ddata->clocks[i]) {
				index = i;
				break;
			}
		}
	}

	if (index < 0) {
		FUNC3(ddata->dev, "clock %s not added\n", name);
		return index;
	}

	ddata->clocks[index] = FUNC4(ddata->dev, name);
	if (FUNC0(ddata->clocks[index])) {
		FUNC3(ddata->dev, "clock get error for %s: %li\n",
			name, FUNC1(ddata->clocks[index]));

		return FUNC1(ddata->clocks[index]);
	}

	error = FUNC2(ddata->clocks[index]);
	if (error) {
		FUNC3(ddata->dev, "clock prepare error for %s: %i\n",
			name, error);

		return error;
	}

	return 0;
}
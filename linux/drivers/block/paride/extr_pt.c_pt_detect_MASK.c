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
struct pt_unit {int present; int drive; int /*<<< orphan*/ * pi; int /*<<< orphan*/  name; int /*<<< orphan*/ * bufptr; scalar_t__ last_sense; scalar_t__ flags; int /*<<< orphan*/  available; int /*<<< orphan*/  pia; } ;

/* Variables and functions */
 int* DU ; 
 size_t D_DLY ; 
 size_t D_MOD ; 
 size_t D_PRO ; 
 size_t D_PRT ; 
 size_t D_SLV ; 
 size_t D_UNI ; 
 int /*<<< orphan*/  PI_PT ; 
 int /*<<< orphan*/  PT_NAMELEN ; 
 int PT_UNITS ; 
 int /*<<< orphan*/  PT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  major ; 
 char* name ; 
 int /*<<< orphan*/  par_drv ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 struct pt_unit* pt ; 
 int /*<<< orphan*/  FUNC7 (struct pt_unit*) ; 
 int /*<<< orphan*/  pt_scratch ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC9(void)
{
	struct pt_unit *tape;
	int specified = 0, found = 0;
	int unit;

	FUNC6("%s: %s version %s, major %d\n", name, name, PT_VERSION, major);

	par_drv = FUNC2(name);
	if (!par_drv) {
		FUNC5("failed to register %s driver\n", name);
		return -1;
	}

	specified = 0;
	for (unit = 0; unit < PT_UNITS; unit++) {
		struct pt_unit *tape = &pt[unit];
		tape->pi = &tape->pia;
		FUNC0(&tape->available, 1);
		tape->flags = 0;
		tape->last_sense = 0;
		tape->present = 0;
		tape->bufptr = NULL;
		tape->drive = DU[D_SLV];
		FUNC8(tape->name, PT_NAMELEN, "%s%d", name, unit);
		if (!DU[D_PRT])
			continue;
		specified++;
		if (FUNC1(tape->pi, 0, DU[D_PRT], DU[D_MOD], DU[D_UNI],
		     DU[D_PRO], DU[D_DLY], pt_scratch, PI_PT,
		     verbose, tape->name)) {
			if (!FUNC7(tape)) {
				tape->present = 1;
				found++;
			} else
				FUNC3(tape->pi);
		}
	}
	if (specified == 0) {
		tape = pt;
		if (FUNC1(tape->pi, 1, -1, -1, -1, -1, -1, pt_scratch,
			    PI_PT, verbose, tape->name)) {
			if (!FUNC7(tape)) {
				tape->present = 1;
				found++;
			} else
				FUNC3(tape->pi);
		}

	}
	if (found)
		return 0;

	FUNC4(par_drv);
	FUNC6("%s: No ATAPI tape drive detected\n", name);
	return -1;
}
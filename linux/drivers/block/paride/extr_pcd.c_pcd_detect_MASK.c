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
struct pcd_unit {int present; TYPE_1__* disk; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  pi; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 size_t D_DLY ; 
 size_t D_MOD ; 
 size_t D_PRO ; 
 size_t D_PRT ; 
 size_t D_SLV ; 
 size_t D_UNI ; 
 int PCD_UNITS ; 
 int /*<<< orphan*/  PCD_VERSION ; 
 int /*<<< orphan*/  PI_PCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int*** drives ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  nice ; 
 int /*<<< orphan*/  par_drv ; 
 struct pcd_unit* pcd ; 
 int /*<<< orphan*/  pcd_buffer ; 
 scalar_t__ pcd_drive_count ; 
 int /*<<< orphan*/  FUNC2 (struct pcd_unit*,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC10(void)
{
	char id[18];
	int k, unit;
	struct pcd_unit *cd;

	FUNC8("%s: %s version %s, major %d, nice %d\n",
	       name, name, PCD_VERSION, major, nice);

	par_drv = FUNC4(name);
	if (!par_drv) {
		FUNC7("failed to register %s driver\n", name);
		return -1;
	}

	k = 0;
	if (pcd_drive_count == 0) { /* nothing spec'd - so autoprobe for 1 */
		cd = pcd;
		if (cd->disk && FUNC3(cd->pi, 1, -1, -1, -1, -1, -1,
			    pcd_buffer, PI_PCD, verbose, cd->name)) {
			if (!FUNC2(cd, -1, id)) {
				cd->present = 1;
				k++;
			} else
				FUNC5(cd->pi);
		}
	} else {
		for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
			int *conf = *drives[unit];
			if (!conf[D_PRT])
				continue;
			if (!cd->disk)
				continue;
			if (!FUNC3(cd->pi, 0, conf[D_PRT], conf[D_MOD],
				     conf[D_UNI], conf[D_PRO], conf[D_DLY],
				     pcd_buffer, PI_PCD, verbose, cd->name)) 
				continue;
			if (!FUNC2(cd, conf[D_SLV], id)) {
				cd->present = 1;
				k++;
			} else
				FUNC5(cd->pi);
		}
	}
	if (k)
		return 0;

	FUNC8("%s: No CD-ROM drive found\n", name);
	for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
		if (!cd->disk)
			continue;
		FUNC0(cd->disk->queue);
		cd->disk->queue = NULL;
		FUNC1(&cd->tag_set);
		FUNC9(cd->disk);
	}
	FUNC6(par_drv);
	return -1;
}
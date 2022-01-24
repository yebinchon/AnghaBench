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
struct pcd_unit {int drive; int /*<<< orphan*/  pi; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int IDE_BUSY ; 
 int IDE_DRQ ; 
 scalar_t__ FUNC0 (struct pcd_unit*,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct pcd_unit*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pcd_unit*,int,int) ; 

__attribute__((used)) static int FUNC7(struct pcd_unit *cd, char *cmd, int dlen, char *fun)
{
	FUNC1(cd->pi);

	FUNC6(cd, 6, 0xa0 + 0x10 * cd->drive);

	if (FUNC0(cd, IDE_BUSY | IDE_DRQ, 0, fun, "before command")) {
		FUNC2(cd->pi);
		return -1;
	}

	FUNC6(cd, 4, dlen % 256);
	FUNC6(cd, 5, dlen / 256);
	FUNC6(cd, 7, 0xa0);	/* ATAPI packet command */

	if (FUNC0(cd, IDE_BUSY, IDE_DRQ, fun, "command DRQ")) {
		FUNC2(cd->pi);
		return -1;
	}

	if (FUNC5(cd, 2) != 1) {
		FUNC4("%s: %s: command phase error\n", cd->name, fun);
		FUNC2(cd->pi);
		return -1;
	}

	FUNC3(cd->pi, cmd, 12);

	return 0;
}
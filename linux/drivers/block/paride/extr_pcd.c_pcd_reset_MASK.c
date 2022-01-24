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
 int HZ ; 
 int IDE_BUSY ; 
 int /*<<< orphan*/  PCD_RESET_TMO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct pcd_unit*,int) ; 
 int FUNC5 (struct pcd_unit*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC6 (struct pcd_unit*,int,int) ; 

__attribute__((used)) static int FUNC7(struct pcd_unit *cd)
{
	int i, k, flg;
	int expect[5] = { 1, 1, 1, 0x14, 0xeb };

	FUNC1(cd->pi);
	FUNC6(cd, 6, 0xa0 + 0x10 * cd->drive);
	FUNC6(cd, 7, 8);

	FUNC0(20 * HZ / 1000);	/* delay a bit */

	k = 0;
	while ((k++ < PCD_RESET_TMO) && (FUNC5(cd) & IDE_BUSY))
		FUNC0(HZ / 10);

	flg = 1;
	for (i = 0; i < 5; i++)
		flg &= (FUNC4(cd, i + 1) == expect[i]);

	if (verbose) {
		FUNC3("%s: Reset (%d) signature = ", cd->name, k);
		for (i = 0; i < 5; i++)
			FUNC3("%3x", FUNC4(cd, i + 1));
		if (!flg)
			FUNC3(" (incorrect)");
		FUNC3("\n");
	}

	FUNC2(cd->pi);
	return flg - 1;
}
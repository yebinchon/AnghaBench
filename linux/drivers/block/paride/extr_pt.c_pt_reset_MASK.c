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
struct pt_unit {int /*<<< orphan*/  name; struct pi_adapter* pi; } ;
struct pi_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_unit*) ; 
 int HZ ; 
 int /*<<< orphan*/  PT_RESET_TMO ; 
 int STAT_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct pi_adapter*,int) ; 
 int FUNC6 (struct pi_adapter*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC7 (struct pi_adapter*,int,int) ; 

__attribute__((used)) static int FUNC8(struct pt_unit *tape)
{
	struct pi_adapter *pi = tape->pi;
	int i, k, flg;
	int expect[5] = { 1, 1, 1, 0x14, 0xeb };

	FUNC1(pi);
	FUNC7(pi, 6, FUNC0(tape));
	FUNC7(pi, 7, 8);

	FUNC4(20 * HZ / 1000);

	k = 0;
	while ((k++ < PT_RESET_TMO) && (FUNC6(pi) & STAT_BUSY))
		FUNC4(HZ / 10);

	flg = 1;
	for (i = 0; i < 5; i++)
		flg &= (FUNC5(pi, i + 1) == expect[i]);

	if (verbose) {
		FUNC3("%s: Reset (%d) signature = ", tape->name, k);
		for (i = 0; i < 5; i++)
			FUNC3("%3x", FUNC5(pi, i + 1));
		if (!flg)
			FUNC3(" (incorrect)");
		FUNC3("\n");
	}

	FUNC2(pi);
	return flg - 1;
}
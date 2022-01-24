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
struct pg {int /*<<< orphan*/  pi; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  got ;

/* Variables and functions */
 int FUNC0 (struct pg*) ; 
 int HZ ; 
 int /*<<< orphan*/  PG_RESET_TMO ; 
 int STAT_BUSY ; 
 scalar_t__ FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct pg*,int) ; 
 int FUNC7 (struct pg*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC8 (struct pg*,int,int) ; 

__attribute__((used)) static int FUNC9(struct pg *dev)
{
	int i, k, err;
	int expect[5] = { 1, 1, 1, 0x14, 0xeb };
	int got[5];

	FUNC3(dev->pi);
	FUNC8(dev, 6, FUNC0(dev));
	FUNC8(dev, 7, 8);

	FUNC2(20 * HZ / 1000);

	k = 0;
	while ((k++ < PG_RESET_TMO) && (FUNC7(dev) & STAT_BUSY))
		FUNC2(1);

	for (i = 0; i < 5; i++)
		got[i] = FUNC6(dev, i + 1);

	err = FUNC1(expect, got, sizeof(got)) ? -1 : 0;

	if (verbose) {
		FUNC5("%s: Reset (%d) signature = ", dev->name, k);
		for (i = 0; i < 5; i++)
			FUNC5("%3x", got[i]);
		if (err)
			FUNC5(" (incorrect)");
		FUNC5("\n");
	}

	FUNC4(dev->pi);
	return err;
}
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

/* Variables and functions */
 int ZPCI_TABLE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 

void FUNC5(unsigned long entry)
{
	unsigned long *sto = FUNC2(entry);
	int sx;

	for (sx = 0; sx < ZPCI_TABLE_ENTRIES; sx++)
		if (FUNC4(sto[sx]))
			FUNC1(FUNC3(sto[sx]));

	FUNC0(sto);
}
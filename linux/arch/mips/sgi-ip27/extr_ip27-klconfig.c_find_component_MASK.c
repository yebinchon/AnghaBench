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
typedef  int /*<<< orphan*/  lboard_t ;
typedef  int /*<<< orphan*/  klinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

klinfo_t *FUNC4(lboard_t *brd, klinfo_t *kli, unsigned char struct_type)
{
	int index, j;

	if (kli == (klinfo_t *)NULL) {
		index = 0;
	} else {
		for (j = 0; j < FUNC2(brd); j++)
			if (kli == FUNC0(brd, j))
				break;
		index = j;
		if (index == FUNC2(brd)) {
			FUNC3("find_component: Bad pointer: 0x%p\n", kli);
			return (klinfo_t *)NULL;
		}
		index++;		/* next component */
	}

	for (; index < FUNC2(brd); index++) {
		kli = FUNC0(brd, index);
		if (FUNC1(kli) == struct_type)
			return kli;
	}

	/* Didn't find it. */
	return (klinfo_t *)NULL;
}
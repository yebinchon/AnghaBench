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
#define  TYPE_DATA 129 
#define  TYPE_INST 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(int type)
{
	if (!FUNC0())
		return 0;

	/*
	 * We can be called early, so don't rely on
	 * our static variables being initialised.
	 */
	switch (type) {
	case TYPE_INST:
		return FUNC1();
	case TYPE_DATA:
		return FUNC2();
	default:
		FUNC3("unknown slot type: %d\n", type);
		return 0;
	}
}
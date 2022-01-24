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
struct sysc {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SYSC_MAX_CLOCKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sysc *ddata)
{
	int i;

	if (!ddata->clocks)
		return;

	for (i = 0; i < SYSC_MAX_CLOCKS; i++) {
		if (!FUNC0(ddata->clocks[i]))
			FUNC1(ddata->clocks[i]);
	}
}
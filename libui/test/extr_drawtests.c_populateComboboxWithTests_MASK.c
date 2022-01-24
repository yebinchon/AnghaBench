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
typedef  int /*<<< orphan*/  uiCombobox ;
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 TYPE_1__* tests ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(uiCombobox *c)
{
	size_t i;

	for (i = 0; tests[i].name != NULL; i++)
		FUNC0(c, tests[i].name);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* allocations ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  uninitComplain ; 

void FUNC4(void)
{
	char *str = NULL;

	if (allocations->len == 0) {
		FUNC2(allocations, TRUE);
		return;
	}
	FUNC1(allocations, uninitComplain, &str);
	FUNC3("Some data was leaked; either you left a uiControl lying around or there's a bug in libui itself. Leaked data:\n%s", str);
	FUNC0(str);
}
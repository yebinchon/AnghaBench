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
struct TYPE_2__ {int /*<<< orphan*/ * last_error; } ;

/* Variables and functions */
 TYPE_1__* GIT_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	if (GIT_GLOBAL->last_error != NULL) {
		FUNC1(0, NULL);
		GIT_GLOBAL->last_error = NULL;
	}

	errno = 0;
#ifdef GIT_WIN32
	SetLastError(0);
#endif
}
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
typedef  int /*<<< orphan*/  pm_message_t ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  failed_prepare; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUSPEND_PREPARE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ suspend_stats ; 

int FUNC5(pm_message_t state)
{
	ktime_t starttime = FUNC4();
	int error;

	error = FUNC0(state);
	if (error) {
		suspend_stats.failed_prepare++;
		FUNC1(SUSPEND_PREPARE);
	} else
		error = FUNC3(state);
	FUNC2(starttime, state, error, "start");
	return error;
}
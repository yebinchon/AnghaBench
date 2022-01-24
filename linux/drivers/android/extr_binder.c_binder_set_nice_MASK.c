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
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_PRIORITY_CAP ; 
 long MAX_NICE ; 
 int /*<<< orphan*/  RLIMIT_NICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,long) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,long) ; 

__attribute__((used)) static void FUNC6(long nice)
{
	long min_nice;

	if (FUNC2(current, nice)) {
		FUNC5(current, nice);
		return;
	}
	min_nice = FUNC4(FUNC3(RLIMIT_NICE));
	FUNC0(BINDER_DEBUG_PRIORITY_CAP,
		     "%d: nice value %ld not allowed use %ld instead\n",
		      current->pid, nice, min_nice);
	FUNC5(current, min_nice);
	if (min_nice <= MAX_NICE)
		return;
	FUNC1("%d RLIMIT_NICE not set\n", current->pid);
}
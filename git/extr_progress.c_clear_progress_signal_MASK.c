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
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;
struct itimerval {TYPE_1__ member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ progress_testing ; 
 scalar_t__ progress_update ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct itimerval v = {{0,},};

	if (progress_testing)
		return;

	FUNC0(ITIMER_REAL, &v, NULL);
	FUNC1(SIGALRM, SIG_IGN);
	progress_update = 0;
}
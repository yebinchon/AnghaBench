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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_2__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_1__ it_interval; TYPE_1__ it_value; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  progress_interval ; 
 scalar_t__ progress_testing ; 
 scalar_t__ progress_update ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct sigaction sa;
	struct itimerval v;

	if (progress_testing)
		return;

	progress_update = 0;

	FUNC0(&sa, 0, sizeof(sa));
	sa.sa_handler = progress_interval;
	FUNC3(&sa.sa_mask);
	sa.sa_flags = SA_RESTART;
	FUNC2(SIGALRM, &sa, NULL);

	v.it_interval.tv_sec = 1;
	v.it_interval.tv_usec = 0;
	v.it_value = v.it_interval;
	FUNC1(ITIMER_REAL, &v, NULL);
}
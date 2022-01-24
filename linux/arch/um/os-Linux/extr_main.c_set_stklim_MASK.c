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
struct rlimit {scalar_t__ rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_STACK ; 
 scalar_t__ RLIM_INFINITY ; 
 scalar_t__ STACKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rlimit*) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct rlimit lim;

	if (FUNC1(RLIMIT_STACK, &lim) < 0) {
		FUNC2("getrlimit");
		FUNC0(1);
	}
	if ((lim.rlim_cur == RLIM_INFINITY) || (lim.rlim_cur > STACKSIZE)) {
		lim.rlim_cur = STACKSIZE;
		if (FUNC3(RLIMIT_STACK, &lim) < 0) {
			FUNC2("setrlimit");
			FUNC0(1);
		}
	}
}
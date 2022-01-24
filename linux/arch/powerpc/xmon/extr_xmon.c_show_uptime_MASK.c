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
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct timespec64 uptime;

	if (FUNC3(bus_error_jmp) == 0) {
		catch_memory_errors = 1;
		FUNC4();

		FUNC1(&uptime);
		FUNC2("Uptime: %lu.%.2lu seconds\n", (unsigned long)uptime.tv_sec,
			((unsigned long)uptime.tv_nsec / (NSEC_PER_SEC/100)));

		FUNC4();
		FUNC0(200);						\
	}
	catch_memory_errors = 0;
}
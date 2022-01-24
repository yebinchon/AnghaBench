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
struct TYPE_4__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ command_line ; 
 int /*<<< orphan*/  print_command_performance_atexit ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  trace_perf_key ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(const char **argv)
{
	if (!FUNC4(&trace_perf_key))
		return;

	if (!command_line.len)
		FUNC0(print_command_performance_atexit);

	FUNC2(&command_line);
	FUNC1(&command_line, argv);
	FUNC3();
}
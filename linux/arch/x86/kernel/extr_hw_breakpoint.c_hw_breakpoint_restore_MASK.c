#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  debugreg6; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cpu_debugreg ; 
 int /*<<< orphan*/  cpu_dr7 ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
	FUNC1(FUNC0(cpu_debugreg[0]), 0);
	FUNC1(FUNC0(cpu_debugreg[1]), 1);
	FUNC1(FUNC0(cpu_debugreg[2]), 2);
	FUNC1(FUNC0(cpu_debugreg[3]), 3);
	FUNC1(current->thread.debugreg6, 6);
	FUNC1(FUNC0(cpu_dr7), 7);
}
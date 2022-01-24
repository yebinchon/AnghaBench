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
 TYPE_1__* current ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ panic_on_oops ; 
 scalar_t__ FUNC3 () ; 

bool FUNC4(void)
{
	if (FUNC3())
		return true;
	if (FUNC2(current))
		return true;
	if (FUNC0() || panic_on_oops ||
			!current->pid || FUNC1(current))
		return true;

	return false;
}
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
struct stack_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_VMAP_STACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long,struct stack_info*) ; 
 scalar_t__ FUNC2 (unsigned long,struct stack_info*) ; 

bool FUNC3(unsigned long sp, struct stack_info *info)
{
	if (!FUNC0(CONFIG_VMAP_STACK))
		return false;

	if (FUNC1(sp, info))
		return true;

	if (FUNC2(sp, info))
		return true;

	return false;
}
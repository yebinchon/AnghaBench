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
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* current ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	/*
	 * Userspace never asked us to manage the bounds tables,
	 * so refuse to help.
	 */
	if (!FUNC1(current->mm))
		return -EINVAL;

	return FUNC0();
}
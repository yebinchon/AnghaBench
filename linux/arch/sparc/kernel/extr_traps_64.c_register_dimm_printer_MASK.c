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
typedef  scalar_t__ dimm_printer_t ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ dimm_handler ; 
 int /*<<< orphan*/  dimm_handler_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC2(dimm_printer_t func)
{
	unsigned long flags;
	int ret = 0;

	FUNC0(&dimm_handler_lock, flags);
	if (!dimm_handler)
		dimm_handler = func;
	else
		ret = -EEXIST;
	FUNC1(&dimm_handler_lock, flags);

	return ret;
}
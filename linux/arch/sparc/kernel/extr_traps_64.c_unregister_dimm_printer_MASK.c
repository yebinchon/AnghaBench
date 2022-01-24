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
typedef  int /*<<< orphan*/ * dimm_printer_t ;

/* Variables and functions */
 int /*<<< orphan*/ * dimm_handler ; 
 int /*<<< orphan*/  dimm_handler_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC2(dimm_printer_t func)
{
	unsigned long flags;

	FUNC0(&dimm_handler_lock, flags);
	if (dimm_handler == func)
		dimm_handler = NULL;
	FUNC1(&dimm_handler_lock, flags);
}
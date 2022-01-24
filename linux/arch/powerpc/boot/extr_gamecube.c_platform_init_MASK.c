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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 TYPE_1__ console_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  ug_console_write ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(unsigned long r3, unsigned long r4, unsigned long r5)
{
	u32 heapsize = 16*1024*1024 - (u32)_end;

	FUNC1(_end, heapsize, 32, 64);
	FUNC0(_dtb_start);

	if (FUNC2())
		console_ops.write = ug_console_write;
}
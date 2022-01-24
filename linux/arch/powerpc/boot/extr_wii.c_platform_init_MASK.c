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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  write; } ;
struct TYPE_3__ {int /*<<< orphan*/  fixups; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_CTRL ; 
 int EXI_CTRL_ENABLE ; 
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 TYPE_2__ console_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  platform_fixups ; 
 TYPE_1__ platform_ops ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  ug_console_write ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(unsigned long r3, unsigned long r4, unsigned long r5)
{
	u32 heapsize = 24*1024*1024 - (u32)_end;

	FUNC3(_end, heapsize, 32, 64);
	FUNC0(_dtb_start);

	/*
	 * 'mini' boots the Broadway processor with EXI disabled.
	 * We need it enabled before probing for the USB Gecko.
	 */
	FUNC2(EXI_CTRL, FUNC1(EXI_CTRL) | EXI_CTRL_ENABLE);

	if (FUNC4())
		console_ops.write = ug_console_write;

	platform_ops.fixups = platform_fixups;
}
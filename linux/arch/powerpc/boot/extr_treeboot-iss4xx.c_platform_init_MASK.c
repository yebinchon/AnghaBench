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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  vmlinux_alloc; int /*<<< orphan*/  fixups; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PIR ; 
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibm44x_dbcr_reset ; 
 int /*<<< orphan*/  iss_4xx_fixups ; 
 int /*<<< orphan*/  iss_4xx_vmlinux_alloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ platform_ops ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long,int,int) ; 

void FUNC5(void)
{
	unsigned long end_of_ram = 0x08000000;
	unsigned long avail_ram = end_of_ram - (unsigned long)_end;
	u32 pir_reg;

	FUNC4(_end, avail_ram, 128, 64);
	platform_ops.fixups = iss_4xx_fixups;
	platform_ops.vmlinux_alloc = iss_4xx_vmlinux_alloc;
	platform_ops.exit = ibm44x_dbcr_reset;
	pir_reg = FUNC2(SPRN_PIR);
	FUNC1(_dtb_start, pir_reg);
	FUNC0(_dtb_start);
	FUNC3();
}
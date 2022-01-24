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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  fixups; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PIR ; 
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ibm44x_dbcr_reset ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  ibm_currituck_fixups ; 
 int ibm_currituck_memsize ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ platform_ops ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,unsigned long,int,int) ; 
 int timebase_period_ns ; 

void FUNC10(void)
{
	unsigned long end_of_ram, avail_ram;
	u32 pir_reg;
	int node, size;
	const u32 *timebase;

	ibm_currituck_memsize = FUNC6();
	if (ibm_currituck_memsize >> 32)
		end_of_ram = ~0UL;
	else
		end_of_ram = ibm_currituck_memsize;
	avail_ram = end_of_ram - (unsigned long)_end;

	FUNC9(_end, avail_ram, 128, 64);
	platform_ops.fixups = ibm_currituck_fixups;
	platform_ops.exit = ibm44x_dbcr_reset;
	pir_reg = FUNC7(SPRN_PIR);

	/* Make sure FDT blob is sane */
	if (FUNC1(_dtb_start) != 0)
		FUNC0("Invalid device tree blob\n");

	node = FUNC4(_dtb_start, -1, "device_type",
	                                     "cpu", sizeof("cpu"));
	if (!node)
		FUNC0("Cannot find cpu node\n");
	timebase = FUNC2(_dtb_start, node, "timebase-frequency", &size);
	if (timebase && (size == 4))
		timebase_period_ns = 1000000000 / *timebase;

	FUNC5(_dtb_start, pir_reg);
	FUNC3(_dtb_start);

	FUNC8();
}
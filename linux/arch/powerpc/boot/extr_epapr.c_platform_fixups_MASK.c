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

/* Variables and functions */
 scalar_t__ EPAPR_EMAGIC ; 
 scalar_t__ EPAPR_SMAGIC ; 
 scalar_t__ _end ; 
 scalar_t__ epapr_magic ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 unsigned long fdt_addr ; 
 unsigned long FUNC1 (void*) ; 
 unsigned long ima_size ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,...) ; 

__attribute__((used)) static void FUNC3(void)
{
	if ((epapr_magic != EPAPR_EMAGIC)
	    && (epapr_magic != EPAPR_SMAGIC))
		FUNC0("r6 contained 0x%08x instead of ePAPR magic number\n",
		      epapr_magic);

	if (ima_size < (unsigned long)_end)
		FUNC2("WARNING: Image loaded outside IMA!"
		       " (_end=%p, ima_size=0x%lx)\n", _end, ima_size);
	if (ima_size < fdt_addr)
		FUNC2("WARNING: Device tree address is outside IMA!"
		       "(fdt_addr=0x%lx, ima_size=0x%lx)\n", fdt_addr,
		       ima_size);
	if (ima_size < fdt_addr + FUNC1((void *)fdt_addr))
		FUNC2("WARNING: Device tree extends outside IMA!"
		       " (fdt_addr=0x%lx, size=0x%x, ima_size=0x%lx\n",
		       fdt_addr, FUNC1((void *)fdt_addr), ima_size);
}
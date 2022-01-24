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
struct TYPE_3__ {int ways; int entry_shift; int way_incr; int entry_mask; int sets; int /*<<< orphan*/  flags; int /*<<< orphan*/  linesz; } ;
struct TYPE_4__ {int /*<<< orphan*/  family; TYPE_1__ dcache; TYPE_1__ icache; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int CACHE_OC_ADDRESS_ARRAY ; 
 unsigned long CCR3_REG ; 
 unsigned long CCR_CACHE_16KB ; 
 unsigned long CCR_CACHE_32KB ; 
 int /*<<< orphan*/  CPU_FAMILY_SH3 ; 
 int /*<<< orphan*/  CPU_HAS_MMU_PAGE_ASSOC ; 
 int /*<<< orphan*/  CPU_SH7705 ; 
 int /*<<< orphan*/  CPU_SH7706 ; 
 int /*<<< orphan*/  CPU_SH7708 ; 
 int /*<<< orphan*/  CPU_SH7710 ; 
 int /*<<< orphan*/  CPU_SH7712 ; 
 int /*<<< orphan*/  CPU_SH7720 ; 
 int /*<<< orphan*/  CPU_SH7721 ; 
 int /*<<< orphan*/  CPU_SH7729 ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int /*<<< orphan*/  SH_CACHE_COMBINED ; 
 unsigned long SH_CACHE_UPDATED ; 
 unsigned long SH_CACHE_VALID ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	unsigned long addr0, addr1, data0, data1, data2, data3;

	FUNC3();
	/*
	 * Check if the entry shadows or not.
	 * When shadowed, it's 128-entry system.
	 * Otherwise, it's 256-entry system.
	 */
	addr0 = CACHE_OC_ADDRESS_ARRAY + (3 << 12);
	addr1 = CACHE_OC_ADDRESS_ARRAY + (1 << 12);

	/* First, write back & invalidate */
	data0  = FUNC0(addr0);
	FUNC1(data0&~(SH_CACHE_VALID|SH_CACHE_UPDATED), addr0);
	data1  = FUNC0(addr1);
	FUNC1(data1&~(SH_CACHE_VALID|SH_CACHE_UPDATED), addr1);

	/* Next, check if there's shadow or not */
	data0 = FUNC0(addr0);
	data0 ^= SH_CACHE_VALID;
	FUNC1(data0, addr0);
	data1 = FUNC0(addr1);
	data2 = data1 ^ SH_CACHE_VALID;
	FUNC1(data2, addr1);
	data3 = FUNC0(addr0);

	/* Lastly, invaliate them. */
	FUNC1(data0&~SH_CACHE_VALID, addr0);
	FUNC1(data2&~SH_CACHE_VALID, addr1);

	FUNC2();

	boot_cpu_data.dcache.ways		= 4;
	boot_cpu_data.dcache.entry_shift	= 4;
	boot_cpu_data.dcache.linesz		= L1_CACHE_BYTES;
	boot_cpu_data.dcache.flags		= 0;

	/*
	 * 7709A/7729 has 16K cache (256-entry), while 7702 has only
	 * 2K(direct) 7702 is not supported (yet)
	 */
	if (data0 == data1 && data2 == data3) {	/* Shadow */
		boot_cpu_data.dcache.way_incr	= (1 << 11);
		boot_cpu_data.dcache.entry_mask	= 0x7f0;
		boot_cpu_data.dcache.sets	= 128;
		boot_cpu_data.type = CPU_SH7708;

		boot_cpu_data.flags |= CPU_HAS_MMU_PAGE_ASSOC;
	} else {				/* 7709A or 7729  */
		boot_cpu_data.dcache.way_incr	= (1 << 12);
		boot_cpu_data.dcache.entry_mask	= 0xff0;
		boot_cpu_data.dcache.sets	= 256;
		boot_cpu_data.type = CPU_SH7729;

#if defined(CONFIG_CPU_SUBTYPE_SH7706)
		boot_cpu_data.type = CPU_SH7706;
#endif
#if defined(CONFIG_CPU_SUBTYPE_SH7710)
		boot_cpu_data.type = CPU_SH7710;
#endif
#if defined(CONFIG_CPU_SUBTYPE_SH7712)
		boot_cpu_data.type = CPU_SH7712;
#endif
#if defined(CONFIG_CPU_SUBTYPE_SH7720)
		boot_cpu_data.type = CPU_SH7720;
#endif
#if defined(CONFIG_CPU_SUBTYPE_SH7721)
		boot_cpu_data.type = CPU_SH7721;
#endif
#if defined(CONFIG_CPU_SUBTYPE_SH7705)
		boot_cpu_data.type = CPU_SH7705;

#if defined(CONFIG_SH7705_CACHE_32KB)
		boot_cpu_data.dcache.way_incr	= (1 << 13);
		boot_cpu_data.dcache.entry_mask	= 0x1ff0;
		boot_cpu_data.dcache.sets	= 512;
		__raw_writel(CCR_CACHE_32KB, CCR3_REG);
#else
		__raw_writel(CCR_CACHE_16KB, CCR3_REG);
#endif
#endif
	}

	/*
	 * SH-3 doesn't have separate caches
	 */
	boot_cpu_data.dcache.flags |= SH_CACHE_COMBINED;
	boot_cpu_data.icache = boot_cpu_data.dcache;

	boot_cpu_data.family = CPU_FAMILY_SH3;
}
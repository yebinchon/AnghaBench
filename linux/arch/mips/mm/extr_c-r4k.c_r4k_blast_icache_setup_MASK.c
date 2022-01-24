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
 scalar_t__ CPU_LOONGSON2 ; 
 scalar_t__ R4600_V1_INDEX_ICACHEOP_WAR ; 
 scalar_t__ TX49XX_ICACHE_INDEX_INV_WAR ; 
 void* blast_icache128 ; 
 void* blast_icache16 ; 
 void* blast_icache32 ; 
 void* blast_icache64 ; 
 void* blast_r4600_v1_icache32 ; 
 scalar_t__ cache_noop ; 
 unsigned long FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 void* loongson2_blast_icache32 ; 
 void* r4k_blast_icache ; 
 void* tx49_blast_icache32 ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long ic_lsize = FUNC0();

	if (ic_lsize == 0)
		r4k_blast_icache = (void *)cache_noop;
	else if (ic_lsize == 16)
		r4k_blast_icache = blast_icache16;
	else if (ic_lsize == 32) {
		if (R4600_V1_INDEX_ICACHEOP_WAR && FUNC1())
			r4k_blast_icache = blast_r4600_v1_icache32;
		else if (TX49XX_ICACHE_INDEX_INV_WAR)
			r4k_blast_icache = tx49_blast_icache32;
		else if (FUNC2() == CPU_LOONGSON2)
			r4k_blast_icache = loongson2_blast_icache32;
		else
			r4k_blast_icache = blast_icache32;
	} else if (ic_lsize == 64)
		r4k_blast_icache = blast_icache64;
	else if (ic_lsize == 128)
		r4k_blast_icache = blast_icache128;
}
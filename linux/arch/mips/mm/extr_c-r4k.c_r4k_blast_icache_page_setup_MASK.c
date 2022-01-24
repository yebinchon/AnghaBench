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
 void* blast_icache128_page ; 
 void* blast_icache16_page ; 
 void* blast_icache32_page ; 
 void* blast_icache64_page ; 
 scalar_t__ cache_noop ; 
 unsigned long FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 void* loongson2_blast_icache32_page ; 
 void* r4k_blast_icache_page ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long ic_lsize = FUNC0();

	if (ic_lsize == 0)
		r4k_blast_icache_page = (void *)cache_noop;
	else if (ic_lsize == 16)
		r4k_blast_icache_page = blast_icache16_page;
	else if (ic_lsize == 32 && FUNC1() == CPU_LOONGSON2)
		r4k_blast_icache_page = loongson2_blast_icache32_page;
	else if (ic_lsize == 32)
		r4k_blast_icache_page = blast_icache32_page;
	else if (ic_lsize == 64)
		r4k_blast_icache_page = blast_icache64_page;
	else if (ic_lsize == 128)
		r4k_blast_icache_page = blast_icache128_page;
}
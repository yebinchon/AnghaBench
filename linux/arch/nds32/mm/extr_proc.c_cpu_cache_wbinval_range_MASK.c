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
struct TYPE_2__ {unsigned long line_size; } ;

/* Variables and functions */
 size_t DCACHE ; 
 size_t ICACHE ; 
 TYPE_1__* L1_cache_info ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

void FUNC2(unsigned long start, unsigned long end, int flushi)
{
	unsigned long line_size, align_start, align_end;

	line_size = L1_cache_info[DCACHE].line_size;
	align_start = start & ~(line_size - 1);
	align_end = (end + line_size - 1) & ~(line_size - 1);
	FUNC0(align_start, align_end);

	if (flushi) {
		line_size = L1_cache_info[ICACHE].line_size;
		align_start = start & ~(line_size - 1);
		align_end = (end + line_size - 1) & ~(line_size - 1);
		FUNC1(align_start, align_end);
	}
}
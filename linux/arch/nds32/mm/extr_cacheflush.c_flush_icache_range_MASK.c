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
 TYPE_1__* L1_cache_info ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(unsigned long start, unsigned long end)
{
	unsigned long line_size, flags;
	line_size = L1_cache_info[DCACHE].line_size;
	start = start & ~(line_size - 1);
	end = (end + line_size - 1) & ~(line_size - 1);
	FUNC2(flags);
	FUNC0(start, end, 1);
	FUNC1(flags);
}
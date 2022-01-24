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
struct TYPE_2__ {unsigned long loops_per_jiffy; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 TYPE_1__* cpu_data ; 
 size_t FUNC1 () ; 

void FUNC2(unsigned long xloops)
{
	FUNC0(xloops * (HZ * cpu_data[FUNC1()].loops_per_jiffy));
}
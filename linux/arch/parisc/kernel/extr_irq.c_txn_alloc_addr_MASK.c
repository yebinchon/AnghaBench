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
struct TYPE_2__ {int /*<<< orphan*/  txn_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int nr_cpu_ids ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (unsigned int,int) ; 

unsigned long FUNC3(unsigned int virt_irq)
{
	static int next_cpu = -1;

	next_cpu++; /* assign to "next" CPU we want this bugger on */

	/* validate entry */
	while ((next_cpu < nr_cpu_ids) &&
		(!FUNC1(cpu_data, next_cpu).txn_addr ||
		 !FUNC0(next_cpu)))
		next_cpu++;

	if (next_cpu >= nr_cpu_ids) 
		next_cpu = 0;	/* nothing else, assign monarch */

	return FUNC2(virt_irq, next_cpu);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_7__ {TYPE_1__ kobj; } ;
struct TYPE_6__ {unsigned long num_cache_leaves; TYPE_1__ kobj; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (unsigned int,unsigned long) ; 
 TYPE_3__* all_cpu_cache_info ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	unsigned long i;

	for (i = 0; i < all_cpu_cache_info[cpu].num_cache_leaves; i++)
		FUNC2(&(FUNC0(cpu,i)->kobj));

	if (all_cpu_cache_info[cpu].kobj.parent) {
		FUNC2(&all_cpu_cache_info[cpu].kobj);
		FUNC3(&all_cpu_cache_info[cpu].kobj,
			0,
			sizeof(struct kobject));
	}

	FUNC1(cpu);

	return 0;
}
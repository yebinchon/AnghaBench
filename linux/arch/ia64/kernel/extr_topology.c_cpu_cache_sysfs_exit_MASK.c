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
struct kobject {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; scalar_t__ num_cache_leaves; int /*<<< orphan*/ * cache_leaves; } ;

/* Variables and functions */
 TYPE_1__* all_cpu_cache_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(unsigned int cpu)
{
	FUNC0(all_cpu_cache_info[cpu].cache_leaves);
	all_cpu_cache_info[cpu].cache_leaves = NULL;
	all_cpu_cache_info[cpu].num_cache_leaves = 0;
	FUNC1(&all_cpu_cache_info[cpu].kobj, 0, sizeof(struct kobject));
	return;
}
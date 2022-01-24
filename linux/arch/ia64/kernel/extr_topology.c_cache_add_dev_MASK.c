#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {scalar_t__ parent; } ;
struct cache_info {TYPE_1__ kobj; } ;
struct TYPE_7__ {unsigned long num_cache_leaves; TYPE_1__ kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 struct cache_info* FUNC0 (unsigned int,unsigned long) ; 
 TYPE_5__* all_cpu_cache_info ; 
 int /*<<< orphan*/  cache_ktype ; 
 int /*<<< orphan*/  cache_ktype_percpu_entry ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 struct device* FUNC3 (unsigned int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(unsigned int cpu)
{
	struct device *sys_dev = FUNC3(cpu);
	unsigned long i, j;
	struct cache_info *this_object;
	int retval = 0;

	if (all_cpu_cache_info[cpu].kobj.parent)
		return 0;


	retval = FUNC2(cpu);
	if (FUNC7(retval < 0))
		return retval;

	retval = FUNC4(&all_cpu_cache_info[cpu].kobj,
				      &cache_ktype_percpu_entry, &sys_dev->kobj,
				      "%s", "cache");
	if (FUNC7(retval < 0)) {
		FUNC1(cpu);
		return retval;
	}

	for (i = 0; i < all_cpu_cache_info[cpu].num_cache_leaves; i++) {
		this_object = FUNC0(cpu,i);
		retval = FUNC4(&(this_object->kobj),
					      &cache_ktype,
					      &all_cpu_cache_info[cpu].kobj,
					      "index%1lu", i);
		if (FUNC7(retval)) {
			for (j = 0; j < i; j++) {
				FUNC5(&(FUNC0(cpu,j)->kobj));
			}
			FUNC5(&all_cpu_cache_info[cpu].kobj);
			FUNC1(cpu);
			return retval;
		}
		FUNC6(&(this_object->kobj), KOBJ_ADD);
	}
	FUNC6(&all_cpu_cache_info[cpu].kobj, KOBJ_ADD);
	return retval;
}
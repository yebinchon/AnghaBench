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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct cpumask {int dummy; } ;
struct cache_index_dir {struct cache* cache; } ;
struct cache {struct cpumask shared_cpu_map; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask const*) ; 
 struct cpumask* FUNC1 (int,struct cache*) ; 
 scalar_t__ has_big_cores ; 
 int FUNC2 (struct cache_index_dir*) ; 
 struct cache_index_dir* FUNC3 (struct kobject*) ; 
 int FUNC4 (char*,scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
	struct cache_index_dir *index;
	struct cache *cache;
	const struct cpumask *mask;
	int ret, cpu;

	index = FUNC3(k);
	cache = index->cache;

	if (has_big_cores) {
		cpu = FUNC2(index);
		mask = FUNC1(cpu, cache);
	} else {
		mask  = &cache->shared_cpu_map;
	}

	ret = FUNC4(buf, PAGE_SIZE - 1, "%*pb\n",
			FUNC0(mask));
	buf[ret++] = '\n';
	buf[ret] = '\0';
	return ret;
}
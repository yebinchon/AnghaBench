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
struct seq_file {int dummy; } ;
struct cpu_cacheinfo {int num_leaves; struct cacheinfo* info_list; } ;
struct cacheinfo {int level; size_t type; int size; int coherency_line_size; int ways_of_associativity; scalar_t__ disable_sysfs; } ;

/* Variables and functions */
 int* cache_type_string ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cpu_cacheinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct seq_file *m)
{
	struct cpu_cacheinfo *this_cpu_ci;
	struct cacheinfo *cache;
	int idx;

	if (!FUNC4(34))
		return;
	this_cpu_ci = FUNC1(FUNC0(cpu_online_mask));
	for (idx = 0; idx < this_cpu_ci->num_leaves; idx++) {
		cache = this_cpu_ci->info_list + idx;
		FUNC2(m, "cache%-11d: ", idx);
		FUNC2(m, "level=%d ", cache->level);
		FUNC2(m, "type=%s ", cache_type_string[cache->type]);
		FUNC2(m, "scope=%s ",
			   cache->disable_sysfs ? "Shared" : "Private");
		FUNC2(m, "size=%dK ", cache->size >> 10);
		FUNC2(m, "line_size=%u ", cache->coherency_line_size);
		FUNC2(m, "associativity=%d", cache->ways_of_associativity);
		FUNC3(m, "\n");
	}
}
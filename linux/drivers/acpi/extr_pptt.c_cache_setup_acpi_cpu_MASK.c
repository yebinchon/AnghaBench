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
typedef  int /*<<< orphan*/  u32 ;
struct cpu_cacheinfo {unsigned int num_leaves; struct cacheinfo* info_list; } ;
struct cacheinfo {int /*<<< orphan*/  level; int /*<<< orphan*/  type; } ;
struct acpi_table_header {int dummy; } ;
struct acpi_pptt_processor {int dummy; } ;
struct acpi_pptt_cache {int dummy; } ;

/* Variables and functions */
 struct acpi_pptt_cache* FUNC0 (struct acpi_table_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_pptt_processor**) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct cpu_cacheinfo* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct acpi_pptt_cache*,struct acpi_pptt_processor*) ; 
 int /*<<< orphan*/  FUNC4 (struct cacheinfo*,struct acpi_pptt_cache*,struct acpi_pptt_processor*) ; 

__attribute__((used)) static void FUNC5(struct acpi_table_header *table,
				 unsigned int cpu)
{
	struct acpi_pptt_cache *found_cache;
	struct cpu_cacheinfo *this_cpu_ci = FUNC2(cpu);
	u32 acpi_cpu_id = FUNC1(cpu);
	struct cacheinfo *this_leaf;
	unsigned int index = 0;
	struct acpi_pptt_processor *cpu_node = NULL;

	while (index < FUNC2(cpu)->num_leaves) {
		this_leaf = this_cpu_ci->info_list + index;
		found_cache = FUNC0(table, acpi_cpu_id,
						   this_leaf->type,
						   this_leaf->level,
						   &cpu_node);
		FUNC3("found = %p %p\n", found_cache, cpu_node);
		if (found_cache)
			FUNC4(this_leaf,
						found_cache,
						cpu_node);

		index++;
	}
}
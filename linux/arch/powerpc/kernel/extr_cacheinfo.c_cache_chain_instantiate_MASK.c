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
struct device_node {int dummy; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,unsigned int) ; 
 struct cache* FUNC2 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*) ; 
 struct device_node* FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 

__attribute__((used)) static struct cache *FUNC7(unsigned int cpu_id)
{
	struct device_node *cpu_node;
	struct cache *cpu_cache = NULL;

	FUNC6("creating cache object(s) for CPU %i\n", cpu_id);

	cpu_node = FUNC4(cpu_id, NULL);
	FUNC0(!cpu_node, "no OF node found for CPU %i\n", cpu_id);
	if (!cpu_node)
		goto out;

	cpu_cache = FUNC2(cpu_node, 1);
	if (!cpu_cache)
		goto out;

	FUNC3(cpu_cache);

	FUNC1(cpu_cache, cpu_id);
out:
	FUNC5(cpu_node);

	return cpu_cache;
}
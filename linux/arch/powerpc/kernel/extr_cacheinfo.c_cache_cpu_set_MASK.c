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
struct cache {struct cache* next_local; int /*<<< orphan*/  shared_cpu_map; int /*<<< orphan*/  ofnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cache *cache, int cpu)
{
	struct cache *next = cache;

	while (next) {
		FUNC0(FUNC3(cpu, &next->shared_cpu_map),
			  "CPU %i already accounted in %pOF(%s)\n",
			  cpu, next->ofnode,
			  FUNC1(next));
		FUNC2(cpu, &next->shared_cpu_map);
		next = next->next_local;
	}
}
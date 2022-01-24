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
struct rdt_resource {scalar_t__ mon_capable; scalar_t__ alloc_capable; int /*<<< orphan*/  cache_level; } ;
struct rdt_domain {int id; int /*<<< orphan*/  list; int /*<<< orphan*/  cpu_mask; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rdt_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rdt_resource*,struct rdt_domain*) ; 
 scalar_t__ FUNC4 (struct rdt_resource*,struct rdt_domain*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdt_domain*) ; 
 struct rdt_domain* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct rdt_resource*,struct rdt_domain*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 struct rdt_domain* FUNC11 (struct rdt_resource*,int,struct list_head**) ; 
 int /*<<< orphan*/  rdt_mon_enable_key ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(int cpu, struct rdt_resource *r)
{
	int id = FUNC5(cpu, r->cache_level);
	struct list_head *add_pos = NULL;
	struct rdt_domain *d;

	d = FUNC11(r, id, &add_pos);
	if (FUNC0(d)) {
		FUNC10("Could't find cache id for cpu %d\n", cpu);
		return;
	}

	if (d) {
		FUNC2(cpu, &d->cpu_mask);
		return;
	}

	d = FUNC7(sizeof(*d), GFP_KERNEL, FUNC1(cpu));
	if (!d)
		return;

	d->id = id;
	FUNC2(cpu, &d->cpu_mask);

	if (r->alloc_capable && FUNC3(r, d)) {
		FUNC6(d);
		return;
	}

	if (r->mon_capable && FUNC4(r, d)) {
		FUNC6(d);
		return;
	}

	FUNC8(&d->list, add_pos);

	/*
	 * If resctrl is mounted, add
	 * per domain monitor data directories.
	 */
	if (FUNC12(&rdt_mon_enable_key))
		FUNC9(r, d);
}
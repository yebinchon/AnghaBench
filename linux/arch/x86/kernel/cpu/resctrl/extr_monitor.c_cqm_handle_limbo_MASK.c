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
struct work_struct {int dummy; } ;
struct rdt_resource {int dummy; } ;
struct rdt_domain {int /*<<< orphan*/  cqm_limbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQM_LIMBOCHECK_INTERVAL ; 
 size_t RDT_RESOURCE_L3 ; 
 int /*<<< orphan*/  FUNC0 (struct rdt_domain*,int) ; 
 struct rdt_domain* FUNC1 (int,struct rdt_resource*) ; 
 scalar_t__ FUNC2 (struct rdt_resource*,struct rdt_domain*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct rdt_resource* rdt_resources_all ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 () ; 

void FUNC9(struct work_struct *work)
{
	unsigned long delay = FUNC3(CQM_LIMBOCHECK_INTERVAL);
	int cpu = FUNC8();
	struct rdt_resource *r;
	struct rdt_domain *d;

	FUNC4(&rdtgroup_mutex);

	r = &rdt_resources_all[RDT_RESOURCE_L3];
	d = FUNC1(cpu, r);

	if (!d) {
		FUNC6("Failure to get domain for limbo worker\n");
		goto out_unlock;
	}

	FUNC0(d, false);

	if (FUNC2(r, d))
		FUNC7(cpu, &d->cqm_limbo, delay);

out_unlock:
	FUNC5(&rdtgroup_mutex);
}
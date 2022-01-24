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
struct rdt_resource {int /*<<< orphan*/  name; int /*<<< orphan*/  (* msr_update ) (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ;} ;
struct rdt_domain {int dummy; } ;
struct msr_param {struct rdt_resource* res; } ;

/* Variables and functions */
 struct rdt_domain* FUNC0 (int,struct rdt_resource*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ; 

void FUNC4(void *arg)
{
	struct msr_param *m = arg;
	struct rdt_resource *r = m->res;
	int cpu = FUNC2();
	struct rdt_domain *d;

	d = FUNC0(cpu, r);
	if (d) {
		r->msr_update(d, m, r);
		return;
	}
	FUNC1("cpu %d not found in any domain for resource %s\n",
		     cpu, r->name);
}
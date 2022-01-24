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
struct rdt_resource {int /*<<< orphan*/  num_rmid; } ;
struct rdt_domain {int /*<<< orphan*/  mbm_over; void* mbm_total; int /*<<< orphan*/  rmid_busy_llc; void* mbm_local; int /*<<< orphan*/  cqm_limbo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBM_OVERFLOW_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cqm_handle_limbo ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 void* FUNC7 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  mbm_handle_overflow ; 
 int /*<<< orphan*/  FUNC9 (struct rdt_domain*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rdt_resource *r, struct rdt_domain *d)
{
	size_t tsize;

	if (FUNC3()) {
		d->rmid_busy_llc = FUNC2(r->num_rmid, GFP_KERNEL);
		if (!d->rmid_busy_llc)
			return -ENOMEM;
		FUNC0(&d->cqm_limbo, cqm_handle_limbo);
	}
	if (FUNC6()) {
		tsize = sizeof(*d->mbm_total);
		d->mbm_total = FUNC7(r->num_rmid, tsize, GFP_KERNEL);
		if (!d->mbm_total) {
			FUNC1(d->rmid_busy_llc);
			return -ENOMEM;
		}
	}
	if (FUNC5()) {
		tsize = sizeof(*d->mbm_local);
		d->mbm_local = FUNC7(r->num_rmid, tsize, GFP_KERNEL);
		if (!d->mbm_local) {
			FUNC1(d->rmid_busy_llc);
			FUNC8(d->mbm_total);
			return -ENOMEM;
		}
	}

	if (FUNC4()) {
		FUNC0(&d->mbm_over, mbm_handle_overflow);
		FUNC9(d, MBM_OVERFLOW_INTERVAL);
	}

	return 0;
}
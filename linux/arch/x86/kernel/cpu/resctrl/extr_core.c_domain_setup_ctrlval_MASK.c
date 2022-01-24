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
struct rdt_resource {int /*<<< orphan*/  (* msr_update ) (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ;int /*<<< orphan*/  num_closid; } ;
struct rdt_domain {int /*<<< orphan*/ * mbps_val; int /*<<< orphan*/ * ctrl_val; } ;
struct msr_param {int /*<<< orphan*/  high; scalar_t__ low; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdt_resource*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ; 

__attribute__((used)) static int FUNC4(struct rdt_resource *r, struct rdt_domain *d)
{
	struct msr_param m;
	u32 *dc, *dm;

	dc = FUNC1(r->num_closid, sizeof(*d->ctrl_val), GFP_KERNEL);
	if (!dc)
		return -ENOMEM;

	dm = FUNC1(r->num_closid, sizeof(*d->mbps_val), GFP_KERNEL);
	if (!dm) {
		FUNC0(dc);
		return -ENOMEM;
	}

	d->ctrl_val = dc;
	d->mbps_val = dm;
	FUNC2(r, dc, dm);

	m.low = 0;
	m.high = r->num_closid;
	r->msr_update(d, &m, r);
	return 0;
}
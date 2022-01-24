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
struct rdt_resource {int dummy; } ;
struct rdt_domain {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rdt_resource*,struct rdt_domain*,unsigned long,int,int) ; 
 scalar_t__ FUNC1 (struct rdt_resource*,struct rdt_domain*,struct rdt_resource**,struct rdt_domain**) ; 

bool FUNC2(struct rdt_resource *r, struct rdt_domain *d,
			   unsigned long cbm, int closid, bool exclusive)
{
	struct rdt_resource *r_cdp;
	struct rdt_domain *d_cdp;

	if (FUNC0(r, d, cbm, closid, exclusive))
		return true;

	if (FUNC1(r, d, &r_cdp, &d_cdp) < 0)
		return false;

	return  FUNC0(r_cdp, d_cdp, cbm, closid, exclusive);
}
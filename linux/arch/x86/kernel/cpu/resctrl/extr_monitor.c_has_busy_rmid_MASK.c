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
struct rdt_resource {scalar_t__ num_rmid; } ;
struct rdt_domain {int /*<<< orphan*/  rmid_busy_llc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

bool FUNC1(struct rdt_resource *r, struct rdt_domain *d)
{
	return FUNC0(d->rmid_busy_llc, r->num_rmid) != r->num_rmid;
}
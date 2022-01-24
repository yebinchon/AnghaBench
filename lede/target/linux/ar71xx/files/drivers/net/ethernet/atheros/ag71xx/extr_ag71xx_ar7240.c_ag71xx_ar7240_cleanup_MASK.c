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
struct ar7240sw {int /*<<< orphan*/  swdev; } ;
struct ag71xx {struct ar7240sw* phy_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar7240sw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ag71xx *ag)
{
	struct ar7240sw *as = ag->phy_priv;

	if (!as)
		return;

	FUNC1(&as->swdev);
	FUNC0(as);
	ag->phy_priv = NULL;
}
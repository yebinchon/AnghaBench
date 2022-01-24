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
struct suni_priv {struct suni_priv* next; struct atm_dev* dev; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 struct suni_priv* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct suni_priv*) ; 
 int /*<<< orphan*/  poll_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct suni_priv* sunis ; 
 int /*<<< orphan*/  sunis_lock ; 

__attribute__((used)) static int FUNC5(struct atm_dev *dev)
{
	struct suni_priv **walk;
	unsigned long flags;

	/* let SAR driver worry about stopping interrupts */
	FUNC3(&sunis_lock,flags);
	for (walk = &sunis; *walk != FUNC0(dev);
	    walk = &FUNC0((*walk)->dev)->next);
	*walk = FUNC0((*walk)->dev)->next;
	if (!sunis) FUNC1(&poll_timer);
	FUNC4(&sunis_lock,flags);
	FUNC2(FUNC0(dev));

	return 0;
}
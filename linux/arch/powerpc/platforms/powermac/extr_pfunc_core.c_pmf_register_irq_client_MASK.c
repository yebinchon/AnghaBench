#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pmf_irq_client {struct pmf_function* func; int /*<<< orphan*/  link; } ;
struct pmf_function {int /*<<< orphan*/  irq_clients; TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* irq_enable ) (struct pmf_function*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PMF_FLAGS_INT_GEN ; 
 struct pmf_function* FUNC0 (struct device_node*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct pmf_function* FUNC5 (struct pmf_function*) ; 
 int /*<<< orphan*/  pmf_irq_mutex ; 
 int /*<<< orphan*/  pmf_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pmf_function*) ; 

int FUNC9(struct device_node *target,
			    const char *name,
			    struct pmf_irq_client *client)
{
	struct pmf_function *func;
	unsigned long flags;

	FUNC6(&pmf_lock, flags);
	func = FUNC0(target, name, PMF_FLAGS_INT_GEN);
	if (func)
		func = FUNC5(func);
	FUNC7(&pmf_lock, flags);
	if (func == NULL)
		return -ENODEV;

	/* guard against manipulations of list */
	FUNC3(&pmf_irq_mutex);
	if (FUNC2(&func->irq_clients))
		func->dev->handlers->irq_enable(func);

	/* guard against pmf_do_irq while changing list */
	FUNC6(&pmf_lock, flags);
	FUNC1(&client->link, &func->irq_clients);
	FUNC7(&pmf_lock, flags);

	client->func = func;
	FUNC4(&pmf_irq_mutex);

	return 0;
}
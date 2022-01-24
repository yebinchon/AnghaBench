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
struct device {int dummy; } ;
struct action_devres {void (* action ) (void*) ;void* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_action_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct action_devres*) ; 
 struct action_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct device *dev, void (*action)(void *), void *data)
{
	struct action_devres *devres;

	devres = FUNC1(devm_action_release,
			      sizeof(struct action_devres), GFP_KERNEL);
	if (!devres)
		return -ENOMEM;

	devres->data = data;
	devres->action = action;

	FUNC0(dev, devres);
	return 0;
}
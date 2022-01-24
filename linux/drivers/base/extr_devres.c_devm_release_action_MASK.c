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
struct action_devres {void* data; void (* action ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_action_match ; 
 int /*<<< orphan*/  devm_action_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct action_devres*) ; 

void FUNC2(struct device *dev, void (*action)(void *), void *data)
{
	struct action_devres devres = {
		.data = data,
		.action = action,
	};

	FUNC0(FUNC1(dev, devm_action_release, devm_action_match,
			       &devres));

}
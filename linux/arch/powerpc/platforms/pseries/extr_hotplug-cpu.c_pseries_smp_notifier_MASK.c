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
struct of_reconfig_data {int /*<<< orphan*/  dn; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  OF_RECONFIG_ATTACH_NODE 129 
#define  OF_RECONFIG_DETACH_NODE 128 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
				unsigned long action, void *data)
{
	struct of_reconfig_data *rd = data;
	int err = 0;

	switch (action) {
	case OF_RECONFIG_ATTACH_NODE:
		err = FUNC1(rd->dn);
		break;
	case OF_RECONFIG_DETACH_NODE:
		FUNC2(rd->dn);
		break;
	}
	return FUNC0(err);
}
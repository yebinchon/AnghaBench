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
struct voltagedomain {int dummy; } ;
struct TYPE_3__ {struct voltagedomain* ptr; int /*<<< orphan*/  name; } ;
struct powerdomain {scalar_t__ prcm_partition; int* state_counter; int banks; size_t state; int /*<<< orphan*/  name; scalar_t__* ret_mem_off_counter; scalar_t__ ret_logic_off_counter; int /*<<< orphan*/  node; int /*<<< orphan*/  _lock; int /*<<< orphan*/  voltdm_node; TYPE_1__ voltdm; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* pwrdm_wait_transition ) (struct powerdomain*) ;int /*<<< orphan*/  (* pwrdm_has_voltdm ) () ;} ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ OMAP4430_INVALID_PRCM_PARTITION ; 
 int PWRDM_MAX_PWRSTS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* arch_pwrdm ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  pwrdm_list ; 
 size_t FUNC6 (struct powerdomain*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct powerdomain*) ; 
 struct voltagedomain* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct powerdomain *pwrdm)
{
	int i;
	struct voltagedomain *voltdm;

	if (!pwrdm || !pwrdm->name)
		return -EINVAL;

	if (FUNC2() &&
	    pwrdm->prcm_partition == OMAP4430_INVALID_PRCM_PARTITION) {
		FUNC5("powerdomain: %s: missing OMAP4 PRCM partition ID\n",
		       pwrdm->name);
		return -EINVAL;
	}

	if (FUNC1(pwrdm->name))
		return -EEXIST;

	if (arch_pwrdm && arch_pwrdm->pwrdm_has_voltdm)
		if (!arch_pwrdm->pwrdm_has_voltdm())
			goto skip_voltdm;

	voltdm = FUNC10(pwrdm->voltdm.name);
	if (!voltdm) {
		FUNC5("powerdomain: %s: voltagedomain %s does not exist\n",
		       pwrdm->name, pwrdm->voltdm.name);
		return -EINVAL;
	}
	pwrdm->voltdm.ptr = voltdm;
	FUNC0(&pwrdm->voltdm_node);
skip_voltdm:
	FUNC7(&pwrdm->_lock);

	FUNC3(&pwrdm->node, &pwrdm_list);

	/* Initialize the powerdomain's state counter */
	for (i = 0; i < PWRDM_MAX_PWRSTS; i++)
		pwrdm->state_counter[i] = 0;

	pwrdm->ret_logic_off_counter = 0;
	for (i = 0; i < pwrdm->banks; i++)
		pwrdm->ret_mem_off_counter[i] = 0;

	if (arch_pwrdm && arch_pwrdm->pwrdm_wait_transition)
		arch_pwrdm->pwrdm_wait_transition(pwrdm);
	pwrdm->state = FUNC6(pwrdm);
	pwrdm->state_counter[pwrdm->state] = 1;

	FUNC4("powerdomain: registered %s\n", pwrdm->name);

	return 0;
}
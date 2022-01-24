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
struct timer_group_priv {int flags; void* group_tcr; void* regs; int /*<<< orphan*/  node; int /*<<< orphan*/  lock; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FSL_GLOBAL_TIMER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPIC_TIMER_TCR_CLKDIV ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_group_priv*) ; 
 struct timer_group_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device_node*,char*) ; 
 void* FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device_node*,struct timer_group_priv*) ; 
 int FUNC10 (struct device_node*,struct timer_group_priv*) ; 
 int /*<<< orphan*/  timer_group_list ; 

__attribute__((used)) static void FUNC11(struct device_node *np)
{
	struct timer_group_priv *priv;
	unsigned int i = 0;
	int ret;

	priv = FUNC2(sizeof(struct timer_group_priv), GFP_KERNEL);
	if (!priv) {
		FUNC6("%pOF: cannot allocate memory for group.\n", np);
		return;
	}

	if (FUNC4(np, "fsl,mpic-global-timer"))
		priv->flags |= FSL_GLOBAL_TIMER;

	priv->regs = FUNC5(np, i++);
	if (!priv->regs) {
		FUNC6("%pOF: cannot ioremap timer register address.\n", np);
		goto out;
	}

	if (priv->flags & FSL_GLOBAL_TIMER) {
		priv->group_tcr = FUNC5(np, i++);
		if (!priv->group_tcr) {
			FUNC6("%pOF: cannot ioremap tcr address.\n", np);
			goto out;
		}
	}

	ret = FUNC9(np, priv);
	if (ret < 0) {
		FUNC6("%pOF: cannot get timer frequency.\n", np);
		goto out;
	}

	ret = FUNC10(np, priv);
	if (ret < 0) {
		FUNC6("%pOF: cannot get timer irqs.\n", np);
		goto out;
	}

	FUNC8(&priv->lock);

	/* Init FSL timer hardware */
	if (priv->flags & FSL_GLOBAL_TIMER)
		FUNC7(priv->group_tcr, MPIC_TIMER_TCR_CLKDIV);

	FUNC3(&priv->node, &timer_group_list);

	return;

out:
	if (priv->regs)
		FUNC0(priv->regs);

	if (priv->group_tcr)
		FUNC0(priv->group_tcr);

	FUNC1(priv);
}
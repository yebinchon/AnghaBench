#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct ff_regs* find_func_priv; int /*<<< orphan*/ * find_func; } ;
typedef  TYPE_1__ xdemitconf_t ;
struct ff_regs {int nr; struct ff_regs* array; int /*<<< orphan*/  re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ff_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(xdemitconf_t *xecfg)
{
	if (xecfg->find_func) {
		int i;
		struct ff_regs *regs = xecfg->find_func_priv;

		for (i = 0; i < regs->nr; i++)
			FUNC1(&regs->array[i].re);
		FUNC0(regs->array);
		FUNC0(regs);
		xecfg->find_func = NULL;
		xecfg->find_func_priv = NULL;
	}
}
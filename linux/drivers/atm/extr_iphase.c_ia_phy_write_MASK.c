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
struct iadev_priv {int dummy; } ;
struct ia_reg {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iadev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct iadev_priv *iadev,
			 const struct ia_reg *regs, int len)
{
	while (len--) {
		FUNC0(iadev, regs->reg, regs->val);
		regs++;
	}
}
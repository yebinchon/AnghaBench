#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct em_sti_priv {TYPE_1__* pdev; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STI_CONTROL ; 
 int /*<<< orphan*/  STI_INTENCLR ; 
 int /*<<< orphan*/  STI_INTFFCLR ; 
 int /*<<< orphan*/  STI_SET_H ; 
 int /*<<< orphan*/  STI_SET_L ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct em_sti_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct em_sti_priv *p)
{
	int ret;

	/* enable clock */
	ret = FUNC0(p->clk);
	if (ret) {
		FUNC1(&p->pdev->dev, "cannot enable clock\n");
		return ret;
	}

	/* reset the counter */
	FUNC2(p, STI_SET_H, 0x40000000);
	FUNC2(p, STI_SET_L, 0x00000000);

	/* mask and clear pending interrupts */
	FUNC2(p, STI_INTENCLR, 3);
	FUNC2(p, STI_INTFFCLR, 3);

	/* enable updates of counter registers */
	FUNC2(p, STI_CONTROL, 1);

	return 0;
}
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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * led_pattern ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	unsigned long flags;
	unsigned int cnt;

	FUNC4(flags);
#ifdef CONFIG_SUN3
	intersil_clear();
#endif
	FUNC5(5);
	FUNC6(5);
#ifdef CONFIG_SUN3
	intersil_clear();
#endif
	FUNC10(1);
	FUNC8(FUNC9(FUNC0()));
	cnt = FUNC2(irq, 0);
	if (!(cnt % 20))
		FUNC7(led_pattern[cnt % 160 / 20]);
	FUNC3(flags);
	return IRQ_HANDLED;
}
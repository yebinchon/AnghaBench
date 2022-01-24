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
struct platform_device {int dummy; } ;
struct neponset_drvdata {int /*<<< orphan*/  base; int /*<<< orphan*/  irq_base; int /*<<< orphan*/  smc91x; int /*<<< orphan*/  sa1111; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NEP_IRQ_NR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct neponset_drvdata*) ; 
 int /*<<< orphan*/ * nep ; 
 int /*<<< orphan*/  neponset_pcmcia_table ; 
 int /*<<< orphan*/  neponset_uart1_gpio_table ; 
 int /*<<< orphan*/  neponset_uart3_gpio_table ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct neponset_drvdata* FUNC7 (struct platform_device*) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	struct neponset_drvdata *d = FUNC7(dev);
	int irq = FUNC8(dev, 0);

	if (!FUNC0(d->sa1111))
		FUNC6(d->sa1111);
	if (!FUNC0(d->smc91x))
		FUNC6(d->smc91x);

	FUNC1(&neponset_pcmcia_table);
	FUNC1(&neponset_uart3_gpio_table);
	FUNC1(&neponset_uart1_gpio_table);

	FUNC4(irq, NULL);
	FUNC3(d->irq_base, NEP_IRQ_NR);
	nep = NULL;
	FUNC2(d->base);
	FUNC5(d);

	return 0;
}
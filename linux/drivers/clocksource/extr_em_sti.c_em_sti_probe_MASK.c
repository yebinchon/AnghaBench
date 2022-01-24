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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct em_sti_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  rate; struct platform_device* pdev; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_IRQPOLL ; 
 int IRQF_NOBALANCING ; 
 int IRQF_TIMER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct resource*) ; 
 struct em_sti_priv* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct em_sti_priv*) ; 
 int /*<<< orphan*/  em_sti_interrupt ; 
 int /*<<< orphan*/  FUNC13 (struct em_sti_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct em_sti_priv*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct em_sti_priv*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct em_sti_priv *p;
	struct resource *res;
	int irq;
	int ret;

	p = FUNC11(&pdev->dev, sizeof(*p), GFP_KERNEL);
	if (p == NULL)
		return -ENOMEM;

	p->pdev = pdev;
	FUNC17(pdev, p);

	irq = FUNC15(pdev, 0);
	if (irq < 0)
		return irq;

	/* map memory, let base point to the STI instance */
	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	p->base = FUNC10(&pdev->dev, res);
	if (FUNC0(p->base))
		return FUNC1(p->base);

	ret = FUNC12(&pdev->dev, irq, em_sti_interrupt,
			       IRQF_TIMER | IRQF_IRQPOLL | IRQF_NOBALANCING,
			       FUNC8(&pdev->dev), p);
	if (ret) {
		FUNC7(&pdev->dev, "failed to request low IRQ\n");
		return ret;
	}

	/* get hold of clock */
	p->clk = FUNC9(&pdev->dev, "sclk");
	if (FUNC0(p->clk)) {
		FUNC7(&pdev->dev, "cannot get clock\n");
		return FUNC1(p->clk);
	}

	ret = FUNC5(p->clk);
	if (ret < 0) {
		FUNC7(&pdev->dev, "cannot prepare clock\n");
		return ret;
	}

	ret = FUNC3(p->clk);
	if (ret < 0) {
		FUNC7(&p->pdev->dev, "cannot enable clock\n");
		FUNC6(p->clk);
		return ret;
	}
	p->rate = FUNC4(p->clk);
	FUNC2(p->clk);

	FUNC18(&p->lock);
	FUNC13(p);
	FUNC14(p);
	return 0;
}
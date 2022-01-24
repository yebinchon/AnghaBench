#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct cplds {scalar_t__ irq; int /*<<< orphan*/  irqdomain; scalar_t__ base; int /*<<< orphan*/  irq_mask; } ;

/* Variables and functions */
 int CPLDS_NB_IRQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int EPROBE_DEFER ; 
 scalar_t__ FPGA_IRQ_MASK_EN ; 
 scalar_t__ FPGA_IRQ_SET_CLR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  cplds_irq_domain_ops ; 
 int /*<<< orphan*/  cplds_irq_handler ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct resource*) ; 
 struct cplds* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct cplds*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct cplds*) ; 
 unsigned long FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 void* FUNC11 (struct platform_device*,int) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct cplds*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct resource *res;
	struct cplds *fpga;
	int ret;
	int base_irq;
	unsigned long irqflags = 0;

	fpga = FUNC5(&pdev->dev, sizeof(*fpga), GFP_KERNEL);
	if (!fpga)
		return -ENOMEM;

	fpga->irq = FUNC11(pdev, 0);
	if (fpga->irq <= 0)
		return fpga->irq;

	base_irq = FUNC11(pdev, 1);
	if (base_irq < 0)
		base_irq = 0;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	fpga->base = FUNC4(&pdev->dev, res);
	if (FUNC0(fpga->base))
		return FUNC1(fpga->base);

	FUNC13(pdev, fpga);

	FUNC14(fpga->irq_mask, fpga->base + FPGA_IRQ_MASK_EN);
	FUNC14(0, fpga->base + FPGA_IRQ_SET_CLR);

	irqflags = FUNC9(fpga->irq);
	ret = FUNC6(&pdev->dev, fpga->irq, cplds_irq_handler,
			       irqflags, FUNC3(&pdev->dev), fpga);
	if (ret == -ENOSYS)
		return -EPROBE_DEFER;

	if (ret) {
		FUNC2(&pdev->dev, "couldn't request main irq%d: %d\n",
			fpga->irq, ret);
		return ret;
	}

	FUNC10(fpga->irq, 1);
	fpga->irqdomain = FUNC8(pdev->dev.of_node,
					       CPLDS_NB_IRQ,
					       &cplds_irq_domain_ops, fpga);
	if (!fpga->irqdomain)
		return -ENODEV;

	if (base_irq) {
		ret = FUNC7(fpga->irqdomain, base_irq, 0,
						 CPLDS_NB_IRQ);
		if (ret) {
			FUNC2(&pdev->dev, "couldn't create the irq mapping %d..%d\n",
				base_irq, base_irq + CPLDS_NB_IRQ);
			return ret;
		}
	}

	return 0;
}
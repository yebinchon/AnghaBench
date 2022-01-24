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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct adc_device {unsigned int prescale; scalar_t__ irq; int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; int /*<<< orphan*/  vdd; struct platform_device* pdev; int /*<<< orphan*/  lock; } ;
typedef  enum s3c_cpu_type { ____Placeholder_s3c_cpu_type } s3c_cpu_type ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S3C2410_ADCCON ; 
 unsigned int S3C2410_ADCCON_PRSCEN ; 
 unsigned int FUNC2 (int) ; 
 unsigned int S3C2416_ADCCON_RESSEL ; 
 unsigned int S3C64XX_ADCCON_RESSEL ; 
 int TYPE_ADCV12 ; 
 int TYPE_ADCV2 ; 
 int TYPE_ADCV3 ; 
 struct adc_device* adc_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct resource*) ; 
 struct adc_device* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 int FUNC11 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adc_device*) ; 
 TYPE_1__* FUNC12 (struct platform_device*) ; 
 scalar_t__ FUNC13 (struct platform_device*,int) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct adc_device*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c_adc_irq ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct adc_device *adc;
	struct resource *regs;
	enum s3c_cpu_type cpu = FUNC12(pdev)->driver_data;
	int ret;
	unsigned tmp;

	adc = FUNC9(dev, sizeof(*adc), GFP_KERNEL);
	if (!adc)
		return -ENOMEM;

	FUNC17(&adc->lock);

	adc->pdev = pdev;
	adc->prescale = FUNC2(49);

	adc->vdd = FUNC10(dev, "vdd");
	if (FUNC0(adc->vdd)) {
		FUNC4(dev, "operating without regulator \"vdd\" .\n");
		return FUNC1(adc->vdd);
	}

	adc->irq = FUNC13(pdev, 1);
	if (adc->irq <= 0) {
		FUNC4(dev, "failed to get adc irq\n");
		return -ENOENT;
	}

	ret = FUNC11(dev, adc->irq, s3c_adc_irq, 0, FUNC6(dev),
				adc);
	if (ret < 0) {
		FUNC4(dev, "failed to attach adc irq\n");
		return ret;
	}

	adc->clk = FUNC7(dev, "adc");
	if (FUNC0(adc->clk)) {
		FUNC4(dev, "failed to get adc clock\n");
		return FUNC1(adc->clk);
	}

	regs = FUNC14(pdev, IORESOURCE_MEM, 0);
	adc->regs = FUNC8(dev, regs);
	if (FUNC0(adc->regs))
		return FUNC1(adc->regs);

	ret = FUNC16(adc->vdd);
	if (ret)
		return ret;

	FUNC3(adc->clk);

	tmp = adc->prescale | S3C2410_ADCCON_PRSCEN;

	/* Enable 12-bit ADC resolution */
	if (cpu == TYPE_ADCV12)
		tmp |= S3C2416_ADCCON_RESSEL;
	if (cpu == TYPE_ADCV2 || cpu == TYPE_ADCV3)
		tmp |= S3C64XX_ADCCON_RESSEL;

	FUNC18(tmp, adc->regs + S3C2410_ADCCON);

	FUNC5(dev, "attached adc driver\n");

	FUNC15(pdev, adc);
	adc_dev = adc;

	return 0;
}
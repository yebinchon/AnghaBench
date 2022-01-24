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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hd44780 {void** pins; } ;
struct charlcd {int height; int width; int bwidth; int ifwidth; int /*<<< orphan*/ * ops; struct hd44780* drvdata; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 size_t PIN_CTRL_BL ; 
 size_t PIN_CTRL_E ; 
 size_t PIN_CTRL_RS ; 
 size_t PIN_CTRL_RW ; 
 unsigned int PIN_DATA0 ; 
 unsigned int PIN_DATA4 ; 
 int FUNC1 (void*) ; 
 struct charlcd* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct charlcd*) ; 
 int FUNC4 (struct charlcd*) ; 
 int FUNC5 (struct device*,char*,int*) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  hd44780_ops_gpio4 ; 
 int /*<<< orphan*/  hd44780_ops_gpio8 ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct charlcd*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	unsigned int i, base;
	struct charlcd *lcd;
	struct hd44780 *hd;
	int ifwidth, ret;

	/* Required pins */
	ifwidth = FUNC9(dev, "data");
	if (ifwidth < 0)
		return ifwidth;

	switch (ifwidth) {
	case 4:
		base = PIN_DATA4;
		break;
	case 8:
		base = PIN_DATA0;
		break;
	default:
		return -EINVAL;
	}

	lcd = FUNC2(sizeof(struct hd44780));
	if (!lcd)
		return -ENOMEM;

	hd = lcd->drvdata;

	for (i = 0; i < ifwidth; i++) {
		hd->pins[base + i] = FUNC7(dev, "data", i,
							  GPIOD_OUT_LOW);
		if (FUNC0(hd->pins[base + i])) {
			ret = FUNC1(hd->pins[base + i]);
			goto fail;
		}
	}

	hd->pins[PIN_CTRL_E] = FUNC6(dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(hd->pins[PIN_CTRL_E])) {
		ret = FUNC1(hd->pins[PIN_CTRL_E]);
		goto fail;
	}

	hd->pins[PIN_CTRL_RS] = FUNC6(dev, "rs", GPIOD_OUT_HIGH);
	if (FUNC0(hd->pins[PIN_CTRL_RS])) {
		ret = FUNC1(hd->pins[PIN_CTRL_RS]);
		goto fail;
	}

	/* Optional pins */
	hd->pins[PIN_CTRL_RW] = FUNC8(dev, "rw",
							GPIOD_OUT_LOW);
	if (FUNC0(hd->pins[PIN_CTRL_RW])) {
		ret = FUNC1(hd->pins[PIN_CTRL_RW]);
		goto fail;
	}

	hd->pins[PIN_CTRL_BL] = FUNC8(dev, "backlight",
							GPIOD_OUT_LOW);
	if (FUNC0(hd->pins[PIN_CTRL_BL])) {
		ret = FUNC1(hd->pins[PIN_CTRL_BL]);
		goto fail;
	}

	/* Required properties */
	ret = FUNC5(dev, "display-height-chars",
				       &lcd->height);
	if (ret)
		goto fail;
	ret = FUNC5(dev, "display-width-chars", &lcd->width);
	if (ret)
		goto fail;

	/*
	 * On displays with more than two rows, the internal buffer width is
	 * usually equal to the display width
	 */
	if (lcd->height > 2)
		lcd->bwidth = lcd->width;

	/* Optional properties */
	FUNC5(dev, "internal-buffer-width", &lcd->bwidth);

	lcd->ifwidth = ifwidth;
	lcd->ops = ifwidth == 8 ? &hd44780_ops_gpio8 : &hd44780_ops_gpio4;

	ret = FUNC4(lcd);
	if (ret)
		goto fail;

	FUNC10(pdev, lcd);
	return 0;

fail:
	FUNC3(lcd);
	return ret;
}
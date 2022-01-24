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
typedef  int u32 ;
struct omap_hwmod {scalar_t__ dev_attr; } ;
struct omap_dss_dispc_dev_attr {int manager_count; scalar_t__ has_framedonetv_irq; } ;

/* Variables and functions */
 int DIGIT_EN_MASK ; 
 int /*<<< orphan*/  DISPC_CONTROL ; 
 int /*<<< orphan*/  DISPC_CONTROL2 ; 
 int /*<<< orphan*/  DISPC_CONTROL3 ; 
 int /*<<< orphan*/  DISPC_IRQSTATUS ; 
 int EVSYNC_EVEN_IRQ_SHIFT ; 
 int EVSYNC_ODD_IRQ_SHIFT ; 
 int FRAMEDONE2_IRQ_SHIFT ; 
 int FRAMEDONE3_IRQ_SHIFT ; 
 int FRAMEDONETV_IRQ_SHIFT ; 
 int FRAMEDONE_IRQ_SHIFT ; 
 int FRAMEDONE_IRQ_TIMEOUT ; 
 int LCD_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct omap_hwmod* FUNC2 (char*) ; 
 int FUNC3 (struct omap_hwmod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct omap_hwmod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
	u32 v, irq_mask = 0;
	bool lcd_en, digit_en, lcd2_en = false, lcd3_en = false;
	int i;
	struct omap_dss_dispc_dev_attr *da;
	struct omap_hwmod *oh;

	oh = FUNC2("dss_dispc");
	if (!oh) {
		FUNC0(1, "display: could not disable outputs during reset - could not find dss_dispc hwmod\n");
		return;
	}

	if (!oh->dev_attr) {
		FUNC5("display: could not disable outputs during reset due to missing dev_attr\n");
		return;
	}

	da = (struct omap_dss_dispc_dev_attr *)oh->dev_attr;

	/* store value of LCDENABLE and DIGITENABLE bits */
	v = FUNC3(oh, DISPC_CONTROL);
	lcd_en = v & LCD_EN_MASK;
	digit_en = v & DIGIT_EN_MASK;

	/* store value of LCDENABLE for LCD2 */
	if (da->manager_count > 2) {
		v = FUNC3(oh, DISPC_CONTROL2);
		lcd2_en = v & LCD_EN_MASK;
	}

	/* store value of LCDENABLE for LCD3 */
	if (da->manager_count > 3) {
		v = FUNC3(oh, DISPC_CONTROL3);
		lcd3_en = v & LCD_EN_MASK;
	}

	if (!(lcd_en | digit_en | lcd2_en | lcd3_en))
		return; /* no managers currently enabled */

	/*
	 * If any manager was enabled, we need to disable it before
	 * DSS clocks are disabled or DISPC module is reset
	 */
	if (lcd_en)
		irq_mask |= 1 << FRAMEDONE_IRQ_SHIFT;

	if (digit_en) {
		if (da->has_framedonetv_irq) {
			irq_mask |= 1 << FRAMEDONETV_IRQ_SHIFT;
		} else {
			irq_mask |= 1 << EVSYNC_EVEN_IRQ_SHIFT |
				1 << EVSYNC_ODD_IRQ_SHIFT;
		}
	}

	if (lcd2_en)
		irq_mask |= 1 << FRAMEDONE2_IRQ_SHIFT;
	if (lcd3_en)
		irq_mask |= 1 << FRAMEDONE3_IRQ_SHIFT;

	/*
	 * clear any previous FRAMEDONE, FRAMEDONETV,
	 * EVSYNC_EVEN/ODD, FRAMEDONE2 or FRAMEDONE3 interrupts
	 */
	FUNC4(irq_mask, oh, DISPC_IRQSTATUS);

	/* disable LCD and TV managers */
	v = FUNC3(oh, DISPC_CONTROL);
	v &= ~(LCD_EN_MASK | DIGIT_EN_MASK);
	FUNC4(v, oh, DISPC_CONTROL);

	/* disable LCD2 manager */
	if (da->manager_count > 2) {
		v = FUNC3(oh, DISPC_CONTROL2);
		v &= ~LCD_EN_MASK;
		FUNC4(v, oh, DISPC_CONTROL2);
	}

	/* disable LCD3 manager */
	if (da->manager_count > 3) {
		v = FUNC3(oh, DISPC_CONTROL3);
		v &= ~LCD_EN_MASK;
		FUNC4(v, oh, DISPC_CONTROL3);
	}

	i = 0;
	while ((FUNC3(oh, DISPC_IRQSTATUS) & irq_mask) !=
	       irq_mask) {
		i++;
		if (i > FRAMEDONE_IRQ_TIMEOUT) {
			FUNC5("didn't get FRAMEDONE1/2/3 or TV interrupt\n");
			break;
		}
		FUNC1(1);
	}
}
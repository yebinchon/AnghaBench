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
 int /*<<< orphan*/  GPI_LCD_CASE_OFF ; 
 int /*<<< orphan*/  GPO_LCD_EN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	if (FUNC0(GPI_LCD_CASE_OFF))
		FUNC1(GPO_LCD_EN, 1);
	else
		FUNC1(GPO_LCD_EN, 0);

	return IRQ_HANDLED;
}
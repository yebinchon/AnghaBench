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
struct gpio_chip {int dummy; } ;
struct bcma_drv_cc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_cc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_cc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_drv_cc*,int,int) ; 
 struct bcma_drv_cc* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned gpio)
{
	struct bcma_drv_cc *cc = FUNC3(chip);

	FUNC0(cc, 1 << gpio, 0);
	/* clear pulldown */
	FUNC1(cc, 1 << gpio, 0);
	/* Set pullup */
	FUNC2(cc, 1 << gpio, 1 << gpio);

	return 0;
}
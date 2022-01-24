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
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 int BCM63XX_GPIO_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int GPIO_CTL_HI_REG ; 
 int GPIO_CTL_LO_REG ; 
 int /*<<< orphan*/  bcm63xx_gpio_lock ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip,
				      unsigned gpio, int dir)
{
	u32 reg;
	u32 mask;
	u32 tmp;
	unsigned long flags;

	if (gpio >= chip->ngpio)
		FUNC0();

	if (gpio < 32) {
		reg = GPIO_CTL_LO_REG;
		mask = 1 << gpio;
	} else {
		reg = GPIO_CTL_HI_REG;
		mask = 1 << (gpio - 32);
	}

	FUNC3(&bcm63xx_gpio_lock, flags);
	tmp = FUNC1(reg);
	if (dir == BCM63XX_GPIO_DIR_IN)
		tmp &= ~mask;
	else
		tmp |= mask;
	FUNC2(tmp, reg);
	FUNC4(&bcm63xx_gpio_lock, flags);

	return 0;
}
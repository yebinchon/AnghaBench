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
struct TYPE_2__ {scalar_t__ ngpio; } ;
struct samsung_gpio_chip {TYPE_1__ chip; } ;

/* Variables and functions */
 scalar_t__ CONFIG_S3C_GPIO_SPACE ; 
 unsigned int S3C_GPIO_END ; 
 struct samsung_gpio_chip* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct samsung_gpio_chip*) ; 

void FUNC2(void)
{
	struct samsung_gpio_chip *ourchip;
	unsigned int gpio_nr;

	for (gpio_nr = 0; gpio_nr < S3C_GPIO_END;) {
		ourchip = FUNC0(gpio_nr);
		if (!ourchip) {
			gpio_nr++;
			continue;
		}

		FUNC1(ourchip);

		gpio_nr += ourchip->chip.ngpio;
		gpio_nr += CONFIG_S3C_GPIO_SPACE;
	}
}
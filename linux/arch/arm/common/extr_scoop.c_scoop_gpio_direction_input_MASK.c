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
struct scoop_dev {int /*<<< orphan*/  scoop_lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ SCOOP_GPCR ; 
 struct scoop_dev* FUNC0 (struct gpio_chip*) ; 
 unsigned short FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip,
			unsigned offset)
{
	struct scoop_dev *sdev = FUNC0(chip);
	unsigned long flags;
	unsigned short gpcr;

	FUNC3(&sdev->scoop_lock, flags);

	gpcr = FUNC1(sdev->base + SCOOP_GPCR);
	gpcr &= ~(1 << (offset + 1));
	FUNC2(gpcr, sdev->base + SCOOP_GPCR);

	FUNC4(&sdev->scoop_lock, flags);

	return 0;
}
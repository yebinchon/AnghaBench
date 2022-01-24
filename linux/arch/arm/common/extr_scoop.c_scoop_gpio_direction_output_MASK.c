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
 int /*<<< orphan*/  FUNC0 (struct scoop_dev*,unsigned int,int) ; 
 struct scoop_dev* FUNC1 (struct gpio_chip*) ; 
 unsigned short FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
			unsigned offset, int value)
{
	struct scoop_dev *sdev = FUNC1(chip);
	unsigned long flags;
	unsigned short gpcr;

	FUNC4(&sdev->scoop_lock, flags);

	FUNC0(sdev, offset, value);

	gpcr = FUNC2(sdev->base + SCOOP_GPCR);
	gpcr |= 1 << (offset + 1);
	FUNC3(gpcr, sdev->base + SCOOP_GPCR);

	FUNC5(&sdev->scoop_lock, flags);

	return 0;
}
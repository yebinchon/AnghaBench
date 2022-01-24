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
struct scoop_dev {int /*<<< orphan*/  scoop_lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scoop_dev*,unsigned int,int) ; 
 struct scoop_dev* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned offset, int value)
{
	struct scoop_dev *sdev = FUNC1(chip);
	unsigned long flags;

	FUNC2(&sdev->scoop_lock, flags);

	FUNC0(sdev, offset, value);

	FUNC3(&sdev->scoop_lock, flags);
}
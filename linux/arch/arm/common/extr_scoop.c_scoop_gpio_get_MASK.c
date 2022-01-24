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
struct scoop_dev {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ SCOOP_GPRR ; 
 struct scoop_dev* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct scoop_dev *sdev = FUNC0(chip);

	/* XXX: I'm unsure, but it seems so */
	return !!(FUNC1(sdev->base + SCOOP_GPRR) & (1 << (offset + 1)));
}
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
struct tpm_chip {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* cancel ) (struct tpm_chip*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_chip*) ; 
 struct tpm_chip* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*) ; 
 scalar_t__ FUNC3 (struct tpm_chip*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct tpm_chip *chip = FUNC1(dev);

	if (FUNC3(chip))
		return 0;

	chip->ops->cancel(chip);
	FUNC2(chip);
	return count;
}
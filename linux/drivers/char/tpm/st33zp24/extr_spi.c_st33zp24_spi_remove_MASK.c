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
struct tpm_chip {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 struct tpm_chip* FUNC0 (struct spi_device*) ; 
 int FUNC1 (struct tpm_chip*) ; 

__attribute__((used)) static int FUNC2(struct spi_device *dev)
{
	struct tpm_chip *chip = FUNC0(dev);
	int ret;

	ret = FUNC1(chip);
	if (ret)
		return ret;

	return 0;
}
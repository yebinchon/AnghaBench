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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct tpm_chip* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct tpm_chip *chip = FUNC0(&pdev->dev);

	FUNC1(chip);
	FUNC2(chip);

	return 0;
}
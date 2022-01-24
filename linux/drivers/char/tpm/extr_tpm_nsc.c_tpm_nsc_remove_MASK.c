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
struct tpm_nsc_priv {int /*<<< orphan*/  base; } ;
struct device {int dummy; } ;
struct tpm_chip {struct device dev; } ;

/* Variables and functions */
 void* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct tpm_chip *chip = FUNC0(dev);
	struct tpm_nsc_priv *priv = FUNC0(&chip->dev);

	FUNC2(chip);
	FUNC1(priv->base, 2);
}
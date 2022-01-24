#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct tpm_atmel_priv {int /*<<< orphan*/  iobase; int /*<<< orphan*/  region_size; int /*<<< orphan*/  base; scalar_t__ have_region; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* pdev ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct tpm_chip *chip = FUNC2(&pdev->dev);
	struct tpm_atmel_priv *priv = FUNC2(&chip->dev);

	FUNC4(chip);
	if (priv->have_region)
		FUNC1(priv->base, priv->region_size);
	FUNC0(priv->iobase);
	FUNC3(pdev);
}
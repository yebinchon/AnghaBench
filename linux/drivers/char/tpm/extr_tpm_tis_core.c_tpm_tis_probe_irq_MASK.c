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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tpm_tis_data {int /*<<< orphan*/  locality; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_X86 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tpm_tis_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tpm_tis_data*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(struct tpm_chip *chip, u32 intmask)
{
	struct tpm_tis_data *priv = FUNC2(&chip->dev);
	u8 original_int_vec;
	int i, rc;

	rc = FUNC4(priv, FUNC1(priv->locality),
			   &original_int_vec);
	if (rc < 0)
		return;

	if (!original_int_vec) {
		if (FUNC0(CONFIG_X86))
			for (i = 3; i <= 15; i++)
				if (!FUNC3(chip, intmask, 0,
							      i))
					return;
	} else if (!FUNC3(chip, intmask, 0,
					     original_int_vec))
		return;
}
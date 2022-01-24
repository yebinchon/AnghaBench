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
struct snd_ac97 {int dummy; } ;
typedef  int /*<<< orphan*/  iomux_v3_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_GPIO_TXFS ; 
 int /*<<< orphan*/  MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS ; 
 int /*<<< orphan*/  MX35_PAD_STXFS4__GPIO2_31 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct snd_ac97 *ac97)
{
	iomux_v3_cfg_t txfs_gpio = MX35_PAD_STXFS4__GPIO2_31;
	iomux_v3_cfg_t txfs = MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS;
	int ret;

	ret = FUNC2(AC97_GPIO_TXFS, "SSI");
	if (ret) {
		FUNC5("failed to get GPIO_TXFS: %d\n", ret);
		return;
	}

	FUNC4(txfs_gpio);

	/* warm reset */
	FUNC0(AC97_GPIO_TXFS, 1);
	FUNC6(2);
	FUNC3(AC97_GPIO_TXFS, 0);

	FUNC1(AC97_GPIO_TXFS);
	FUNC4(txfs);
}
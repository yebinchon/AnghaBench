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
typedef  int /*<<< orphan*/  u32 ;
struct sata_gemini {int sata_bridge; void* sata1_pclk; void* sata0_pclk; scalar_t__ base; void* sata1_reset; void* sata0_reset; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ GEMINI_SATA_ID ; 
 scalar_t__ GEMINI_SATA_PHY_ID ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*) ; 
 void* FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct sata_gemini *sg)
{
	struct device *dev = sg->dev;
	u32 sata_id, sata_phy_id;
	int ret;

	sg->sata0_pclk = FUNC7(dev, "SATA0_PCLK");
	if (FUNC0(sg->sata0_pclk)) {
		FUNC5(dev, "no SATA0 PCLK");
		return -ENODEV;
	}
	sg->sata1_pclk = FUNC7(dev, "SATA1_PCLK");
	if (FUNC0(sg->sata1_pclk)) {
		FUNC5(dev, "no SATA1 PCLK");
		return -ENODEV;
	}

	ret = FUNC4(sg->sata0_pclk);
	if (ret) {
		FUNC9("failed to enable SATA0 PCLK\n");
		return ret;
	}
	ret = FUNC4(sg->sata1_pclk);
	if (ret) {
		FUNC9("failed to enable SATA1 PCLK\n");
		FUNC3(sg->sata0_pclk);
		return ret;
	}

	sg->sata0_reset = FUNC8(dev, "sata0");
	if (FUNC0(sg->sata0_reset)) {
		FUNC5(dev, "no SATA0 reset controller\n");
		FUNC3(sg->sata1_pclk);
		FUNC3(sg->sata0_pclk);
		return FUNC1(sg->sata0_reset);
	}
	sg->sata1_reset = FUNC8(dev, "sata1");
	if (FUNC0(sg->sata1_reset)) {
		FUNC5(dev, "no SATA1 reset controller\n");
		FUNC3(sg->sata1_pclk);
		FUNC3(sg->sata0_pclk);
		return FUNC1(sg->sata1_reset);
	}

	sata_id = FUNC10(sg->base + GEMINI_SATA_ID);
	sata_phy_id = FUNC10(sg->base + GEMINI_SATA_PHY_ID);
	sg->sata_bridge = true;
	FUNC2(sg->sata0_pclk);
	FUNC2(sg->sata1_pclk);

	FUNC6(dev, "SATA ID %08x, PHY ID: %08x\n", sata_id, sata_phy_id);

	return 0;
}
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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;

/* Variables and functions */
 int CALDUTY ; 
 int PPMDRIFTMAX_HI ; 
 int RXCDRCALFOSC0 ; 
 int RXDPIF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sata_phy_config1 ; 
 int /*<<< orphan*/ * sata_phy_config2 ; 

__attribute__((used)) static void FUNC1(u64 regbase)
{
	u32 port, i, reg;

	for (port = 0; port < 2; port++) {
		for (i = 0, reg = RXCDRCALFOSC0; reg <= CALDUTY; reg++, i++)
			FUNC0(regbase, reg, port,
						sata_phy_config1[i]);

		for (i = 0, reg = RXDPIF; reg <= PPMDRIFTMAX_HI; reg++, i++)
			FUNC0(regbase, reg, port,
						sata_phy_config2[i]);
	}
}
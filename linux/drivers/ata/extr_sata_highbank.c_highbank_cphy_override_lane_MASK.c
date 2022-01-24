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
typedef  size_t u8 ;
typedef  int u32 ;
struct TYPE_2__ {size_t lane_mapping; int /*<<< orphan*/  tx_atten; int /*<<< orphan*/ * phy_base; } ;

/* Variables and functions */
 scalar_t__ CPHY_RX_INPUT_STS ; 
 int SPHY_HALF_RATE ; 
 size_t SPHY_LANE ; 
 int FUNC0 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* port_data ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u8 sata_port)
{
	u8 lane = port_data[sata_port].lane_mapping;
	u32 tmp, k = 0;

	if (FUNC3(port_data[sata_port].phy_base == NULL))
		return;
	do {
		tmp = FUNC0(sata_port, CPHY_RX_INPUT_STS +
						lane * SPHY_LANE);
	} while ((tmp & SPHY_HALF_RATE) && (k++ < 1000));
	FUNC1(sata_port, 3);
	FUNC2(sata_port, port_data[sata_port].tx_atten);
}
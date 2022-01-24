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
struct TYPE_2__ {size_t lane_mapping; } ;

/* Variables and functions */
 scalar_t__ CPHY_RX_INPUT_STS ; 
 scalar_t__ CPHY_RX_OVERRIDE ; 
 int CPHY_SATA_DPLL_MODE ; 
 int CPHY_SATA_DPLL_RESET ; 
 int CPHY_SATA_DPLL_SHIFT ; 
 int CPHY_SATA_RX_OVERRIDE ; 
 size_t SPHY_LANE ; 
 int FUNC0 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* port_data ; 

__attribute__((used)) static void FUNC3(u8 sata_port, u32 val)
{
	u8 lane = port_data[sata_port].lane_mapping;
	u32 tmp;
	tmp = FUNC0(sata_port, CPHY_RX_INPUT_STS + lane * SPHY_LANE);
	tmp &= ~CPHY_SATA_RX_OVERRIDE;
	FUNC1(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

	tmp |= CPHY_SATA_RX_OVERRIDE;
	FUNC1(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

	tmp &= ~CPHY_SATA_DPLL_MODE;
	tmp |= val << CPHY_SATA_DPLL_SHIFT;
	FUNC1(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

	tmp |= CPHY_SATA_DPLL_RESET;
	FUNC1(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

	tmp &= ~CPHY_SATA_DPLL_RESET;
	FUNC1(sata_port, CPHY_RX_OVERRIDE + lane * SPHY_LANE, tmp);

	FUNC2(15);
}
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
struct ag71xx {scalar_t__ mdio_reset; scalar_t__ mac_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG1 ; 
 int /*<<< orphan*/  MAC_CFG1_SR ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ag71xx *ag)
{
	FUNC2(ag);

	FUNC3(ag, AG71XX_REG_MAC_CFG1, MAC_CFG1_SR);
	FUNC7(20);

	FUNC5(ag->mac_reset);
	if (ag->mdio_reset)
		FUNC5(ag->mdio_reset);
	FUNC4(100);
	FUNC6(ag->mac_reset);
	if (ag->mdio_reset)
		FUNC6(ag->mdio_reset);
	FUNC4(200);

	FUNC1(ag);

	FUNC0(ag);
}
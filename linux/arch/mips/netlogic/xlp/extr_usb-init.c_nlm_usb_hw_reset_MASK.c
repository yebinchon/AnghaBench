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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int USB_CONTROLLER_RESET ; 
 int /*<<< orphan*/  USB_CTL_0 ; 
 int /*<<< orphan*/  USB_PHY_0 ; 
 int USB_PHY_PORT_RESET_0 ; 
 int USB_PHY_PORT_RESET_1 ; 
 int USB_PHY_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(int node, int port)
{
	uint64_t port_addr;
	uint32_t val;

	/* reset USB phy */
	port_addr = FUNC1(node, port);
	val = FUNC2(port_addr, USB_PHY_0);
	val &= ~(USB_PHY_RESET | USB_PHY_PORT_RESET_0 | USB_PHY_PORT_RESET_1);
	FUNC3(port_addr, USB_PHY_0, val);

	FUNC0(100);
	val = FUNC2(port_addr, USB_CTL_0);
	val &= ~(USB_CONTROLLER_RESET);
	val |= 0x4;
	FUNC3(port_addr, USB_CTL_0, val);
}
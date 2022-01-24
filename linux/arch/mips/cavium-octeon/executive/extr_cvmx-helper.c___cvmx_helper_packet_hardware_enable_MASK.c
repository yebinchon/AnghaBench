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

/* Variables and functions */
#define  CVMX_HELPER_INTERFACE_MODE_DISABLED 137 
#define  CVMX_HELPER_INTERFACE_MODE_GMII 136 
#define  CVMX_HELPER_INTERFACE_MODE_LOOP 135 
#define  CVMX_HELPER_INTERFACE_MODE_NPI 134 
#define  CVMX_HELPER_INTERFACE_MODE_PCIE 133 
#define  CVMX_HELPER_INTERFACE_MODE_PICMG 132 
#define  CVMX_HELPER_INTERFACE_MODE_RGMII 131 
#define  CVMX_HELPER_INTERFACE_MODE_SGMII 130 
#define  CVMX_HELPER_INTERFACE_MODE_SPI 129 
#define  CVMX_HELPER_INTERFACE_MODE_XAUI 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(int interface)
{
	int result = 0;
	switch (FUNC6(interface)) {
		/* These types don't support ports to IPD/PKO */
	case CVMX_HELPER_INTERFACE_MODE_DISABLED:
	case CVMX_HELPER_INTERFACE_MODE_PCIE:
		/* Nothing to do */
		break;
		/* XAUI is a single high speed port */
	case CVMX_HELPER_INTERFACE_MODE_XAUI:
		result = FUNC5(interface);
		break;
		/*
		 * RGMII/GMII/MII are all treated about the same. Most
		 * functions refer to these ports as RGMII
		 */
	case CVMX_HELPER_INTERFACE_MODE_RGMII:
	case CVMX_HELPER_INTERFACE_MODE_GMII:
		result = FUNC2(interface);
		break;
		/*
		 * SPI4 can have 1-16 ports depending on the device at
		 * the other end
		 */
	case CVMX_HELPER_INTERFACE_MODE_SPI:
		result = FUNC4(interface);
		break;
		/*
		 * SGMII can have 1-4 ports depending on how many are
		 * hooked up
		 */
	case CVMX_HELPER_INTERFACE_MODE_SGMII:
	case CVMX_HELPER_INTERFACE_MODE_PICMG:
		result = FUNC3(interface);
		break;
		/* PCI target Network Packet Interface */
	case CVMX_HELPER_INTERFACE_MODE_NPI:
		result = FUNC1(interface);
		break;
		/*
		 * Special loopback only ports. These are not the same
		 * as other ports in loopback mode
		 */
	case CVMX_HELPER_INTERFACE_MODE_LOOP:
		result = FUNC0(interface);
		break;
	}
	return result;
}
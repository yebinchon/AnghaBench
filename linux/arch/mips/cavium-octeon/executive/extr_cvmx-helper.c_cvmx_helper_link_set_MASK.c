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
typedef  int /*<<< orphan*/  cvmx_helper_link_info_t ;

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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 

int FUNC8(int ipd_port, cvmx_helper_link_info_t link_info)
{
	int result = -1;
	int interface = FUNC5(ipd_port);
	int index = FUNC4(ipd_port);

	if (index >= FUNC7(interface))
		return -1;

	switch (FUNC6(interface)) {
	case CVMX_HELPER_INTERFACE_MODE_DISABLED:
	case CVMX_HELPER_INTERFACE_MODE_PCIE:
		break;
	case CVMX_HELPER_INTERFACE_MODE_XAUI:
		result = FUNC3(ipd_port, link_info);
		break;
		/*
		 * RGMII/GMII/MII are all treated about the same. Most
		 * functions refer to these ports as RGMII.
		 */
	case CVMX_HELPER_INTERFACE_MODE_RGMII:
	case CVMX_HELPER_INTERFACE_MODE_GMII:
		result = FUNC0(ipd_port, link_info);
		break;
	case CVMX_HELPER_INTERFACE_MODE_SPI:
		result = FUNC2(ipd_port, link_info);
		break;
	case CVMX_HELPER_INTERFACE_MODE_SGMII:
	case CVMX_HELPER_INTERFACE_MODE_PICMG:
		result = FUNC1(ipd_port, link_info);
		break;
	case CVMX_HELPER_INTERFACE_MODE_NPI:
	case CVMX_HELPER_INTERFACE_MODE_LOOP:
		break;
	}
	return result;
}
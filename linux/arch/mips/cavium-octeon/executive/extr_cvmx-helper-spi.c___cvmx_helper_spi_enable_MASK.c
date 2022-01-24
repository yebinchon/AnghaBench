#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int crc_en; } ;
union cvmx_pip_prt_cfgx {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct TYPE_4__ {scalar_t__ board_type; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int /*<<< orphan*/  CVMX_HELPER_SPI_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CVMX_SPI_MODE_DUPLEX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(int interface)
{
	/*
	 * Normally the ethernet L2 CRC is checked and stripped in the
	 * GMX block.  When you are using SPI, this isn' the case and
	 * IPD needs to check the L2 CRC.
	 */
	int num_ports = FUNC4(interface);
	int ipd_port;
	for (ipd_port = interface * 16; ipd_port < interface * 16 + num_ports;
	     ipd_port++) {
		union cvmx_pip_prt_cfgx port_config;
		port_config.u64 = FUNC5(FUNC0(ipd_port));
		port_config.s.crc_en = 1;
		FUNC10(FUNC0(ipd_port), port_config.u64);
	}

	if (FUNC9()->board_type != CVMX_BOARD_TYPE_SIM) {
		FUNC8(interface, CVMX_SPI_MODE_DUPLEX,
					 CVMX_HELPER_SPI_TIMEOUT, num_ports);
		if (FUNC7(interface))
			FUNC6(interface);
	}
	FUNC2(interface);
	FUNC3(interface);
	FUNC1(interface);
	return 0;
}
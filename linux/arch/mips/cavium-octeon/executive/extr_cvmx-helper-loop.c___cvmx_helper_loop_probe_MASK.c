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
struct TYPE_3__ {scalar_t__ minerr_en; scalar_t__ maxerr_en; } ;
union cvmx_pip_prt_cfgx {void* u64; TYPE_1__ s; } ;
struct TYPE_4__ {scalar_t__ port_bit2; } ;
union cvmx_ipd_sub_port_fcs {void* u64; TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_IPD_SUB_PORT_FCS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

int FUNC4(int interface)
{
	union cvmx_ipd_sub_port_fcs ipd_sub_port_fcs;
	int num_ports = 4;
	int port;

	/* We need to disable length checking so packet < 64 bytes and jumbo
	   frames don't get errors */
	for (port = 0; port < num_ports; port++) {
		union cvmx_pip_prt_cfgx port_cfg;
		int ipd_port = FUNC1(interface, port);
		port_cfg.u64 = FUNC2(FUNC0(ipd_port));
		port_cfg.s.maxerr_en = 0;
		port_cfg.s.minerr_en = 0;
		FUNC3(FUNC0(ipd_port), port_cfg.u64);
	}

	/* Disable FCS stripping for loopback ports */
	ipd_sub_port_fcs.u64 = FUNC2(CVMX_IPD_SUB_PORT_FCS);
	ipd_sub_port_fcs.s.port_bit2 = 0;
	FUNC3(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);
	return num_ports;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ lnk_st; } ;
union cvmx_pcsx_mrx_status_reg {TYPE_3__ s; void* u64; } ;
struct TYPE_10__ {scalar_t__ loopbck1; } ;
union cvmx_pcsx_mrx_control_reg {TYPE_1__ s; void* u64; } ;
struct TYPE_11__ {scalar_t__ mac_phy; scalar_t__ mode; } ;
union cvmx_pcsx_miscx_ctl_reg {TYPE_2__ s; void* u64; } ;
struct TYPE_13__ {int dup; int link_ok; int spd; scalar_t__ an_cpt; } ;
union cvmx_pcsx_anx_results_reg {TYPE_4__ s; void* u64; } ;
struct TYPE_14__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_15__ {TYPE_5__ s; scalar_t__ u64; } ;
typedef  TYPE_6__ cvmx_helper_link_info_t ;
struct TYPE_16__ {scalar_t__ board_type; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 TYPE_6__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC9 () ; 

cvmx_helper_link_info_t FUNC10(int ipd_port)
{
	cvmx_helper_link_info_t result;
	union cvmx_pcsx_miscx_ctl_reg pcs_misc_ctl_reg;
	int interface = FUNC7(ipd_port);
	int index = FUNC6(ipd_port);
	union cvmx_pcsx_mrx_control_reg pcsx_mrx_control_reg;

	result.u64 = 0;

	if (FUNC9()->board_type == CVMX_BOARD_TYPE_SIM) {
		/* The simulator gives you a simulated 1Gbps full duplex link */
		result.s.link_up = 1;
		result.s.full_duplex = 1;
		result.s.speed = 1000;
		return result;
	}

	pcsx_mrx_control_reg.u64 =
	    FUNC8(FUNC2(index, interface));
	if (pcsx_mrx_control_reg.s.loopbck1) {
		/* Force 1Gbps full duplex link for internal loopback */
		result.s.link_up = 1;
		result.s.full_duplex = 1;
		result.s.speed = 1000;
		return result;
	}

	pcs_misc_ctl_reg.u64 =
	    FUNC8(FUNC1(index, interface));
	if (pcs_misc_ctl_reg.s.mode) {
		/* 1000BASE-X */
		/* FIXME */
	} else {
		union cvmx_pcsx_miscx_ctl_reg pcsx_miscx_ctl_reg;
		pcsx_miscx_ctl_reg.u64 =
		    FUNC8(FUNC1(index, interface));
		if (pcsx_miscx_ctl_reg.s.mac_phy) {
			/* PHY Mode */
			union cvmx_pcsx_mrx_status_reg pcsx_mrx_status_reg;
			union cvmx_pcsx_anx_results_reg pcsx_anx_results_reg;

			/*
			 * Don't bother continuing if the SERTES low
			 * level link is down
			 */
			pcsx_mrx_status_reg.u64 =
			    FUNC8(FUNC3
					  (index, interface));
			if (pcsx_mrx_status_reg.s.lnk_st == 0) {
				if (FUNC5
				    (interface, index) != 0)
					return result;
			}

			/* Read the autoneg results */
			pcsx_anx_results_reg.u64 =
			    FUNC8(FUNC0
					  (index, interface));
			if (pcsx_anx_results_reg.s.an_cpt) {
				/*
				 * Auto negotiation is complete. Set
				 * status accordingly.
				 */
				result.s.full_duplex =
				    pcsx_anx_results_reg.s.dup;
				result.s.link_up =
				    pcsx_anx_results_reg.s.link_ok;
				switch (pcsx_anx_results_reg.s.spd) {
				case 0:
					result.s.speed = 10;
					break;
				case 1:
					result.s.speed = 100;
					break;
				case 2:
					result.s.speed = 1000;
					break;
				default:
					result.s.speed = 0;
					result.s.link_up = 0;
					break;
				}
			} else {
				/*
				 * Auto negotiation isn't
				 * complete. Return link down.
				 */
				result.s.speed = 0;
				result.s.link_up = 0;
			}
		} else {	/* MAC Mode */

			result = FUNC4(ipd_port);
		}
	}
	return result;
}
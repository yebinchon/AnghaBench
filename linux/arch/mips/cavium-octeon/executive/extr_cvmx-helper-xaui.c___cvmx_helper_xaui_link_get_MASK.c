#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int rcv_lnk; } ;
union cvmx_pcsxx_status1_reg {TYPE_3__ s; void* u64; } ;
struct TYPE_7__ {scalar_t__ ls; } ;
union cvmx_gmxx_tx_xaui_ctl {TYPE_1__ s; void* u64; } ;
struct TYPE_8__ {scalar_t__ status; } ;
union cvmx_gmxx_rx_xaui_ctl {TYPE_2__ s; void* u64; } ;
struct TYPE_10__ {int link_up; int full_duplex; int speed; } ;
struct TYPE_11__ {TYPE_4__ s; scalar_t__ u64; } ;
typedef  TYPE_5__ cvmx_helper_link_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

cvmx_helper_link_info_t FUNC9(int ipd_port)
{
	int interface = FUNC6(ipd_port);
	union cvmx_gmxx_tx_xaui_ctl gmxx_tx_xaui_ctl;
	union cvmx_gmxx_rx_xaui_ctl gmxx_rx_xaui_ctl;
	union cvmx_pcsxx_status1_reg pcsxx_status1_reg;
	cvmx_helper_link_info_t result;

	gmxx_tx_xaui_ctl.u64 = FUNC7(FUNC3(interface));
	gmxx_rx_xaui_ctl.u64 = FUNC7(FUNC1(interface));
	pcsxx_status1_reg.u64 =
	    FUNC7(FUNC5(interface));
	result.u64 = 0;

	/* Only return a link if both RX and TX are happy */
	if ((gmxx_tx_xaui_ctl.s.ls == 0) && (gmxx_rx_xaui_ctl.s.status == 0) &&
	    (pcsxx_status1_reg.s.rcv_lnk == 1)) {
		result.s.link_up = 1;
		result.s.full_duplex = 1;
		result.s.speed = 10000;
	} else {
		/* Disable GMX and PCSX interrupts. */
		FUNC8(FUNC0(0, interface), 0x0);
		FUNC8(FUNC2(interface), 0x0);
		FUNC8(FUNC4(interface), 0x0);
	}
	return result;
}
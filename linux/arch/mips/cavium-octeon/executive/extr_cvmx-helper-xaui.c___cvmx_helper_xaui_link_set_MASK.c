#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ls; } ;
union cvmx_gmxx_tx_xaui_ctl {TYPE_2__ s; void* u64; } ;
struct TYPE_8__ {scalar_t__ status; } ;
union cvmx_gmxx_rx_xaui_ctl {TYPE_3__ s; void* u64; } ;
struct TYPE_6__ {int /*<<< orphan*/  link_up; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_helper_link_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int ipd_port, cvmx_helper_link_info_t link_info)
{
	int interface = FUNC3(ipd_port);
	union cvmx_gmxx_tx_xaui_ctl gmxx_tx_xaui_ctl;
	union cvmx_gmxx_rx_xaui_ctl gmxx_rx_xaui_ctl;

	gmxx_tx_xaui_ctl.u64 = FUNC4(FUNC1(interface));
	gmxx_rx_xaui_ctl.u64 = FUNC4(FUNC0(interface));

	/* If the link shouldn't be up, then just return */
	if (!link_info.s.link_up)
		return 0;

	/* Do nothing if both RX and TX are happy */
	if ((gmxx_tx_xaui_ctl.s.ls == 0) && (gmxx_rx_xaui_ctl.s.status == 0))
		return 0;

	/* Bring the link up */
	return FUNC2(interface);
}
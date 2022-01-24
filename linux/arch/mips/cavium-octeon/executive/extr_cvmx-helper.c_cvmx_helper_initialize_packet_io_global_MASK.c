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
struct TYPE_2__ {scalar_t__ rfb_arb_mode; scalar_t__ lrf_arb_mode; } ;
union cvmx_l2c_cfg {int /*<<< orphan*/  u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2C_CFG ; 
 int /*<<< orphan*/  OCTEON_CN52XX_PASS1_0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC17(void)
{
	int result = 0;
	int interface;
	union cvmx_l2c_cfg l2c_cfg;
	const int num_interfaces = FUNC8();

	/*
	 * CN52XX pass 1: Due to a bug in 2nd order CDR, it needs to
	 * be disabled.
	 */
	if (FUNC0(OCTEON_CN52XX_PASS1_0))
		FUNC1(1);

	/*
	 * Tell L2 to give the IOB statically higher priority compared
	 * to the cores. This avoids conditions where IO blocks might
	 * be starved under very high L2 loads.
	 */
	l2c_cfg.u64 = FUNC15(CVMX_L2C_CFG);
	l2c_cfg.s.lrf_arb_mode = 0;
	l2c_cfg.s.rfb_arb_mode = 0;
	FUNC16(CVMX_L2C_CFG, l2c_cfg.u64);

	FUNC14();
	for (interface = 0; interface < num_interfaces; interface++) {
		result |= FUNC11(interface);
		if (FUNC13(interface) > 0)
			FUNC7("Interface %d has %d ports (%s)\n",
				     interface,
				     FUNC13(interface),
				     FUNC10
				     (FUNC9
				      (interface)));
		result |= FUNC5(interface);
		result |= FUNC6(interface);
	}

	result |= FUNC3();
	result |= FUNC4();

	/* Enable any flow control and backpressure */
	result |= FUNC2();

#if CVMX_HELPER_ENABLE_IPD
	result |= cvmx_helper_ipd_and_packet_input_enable();
#endif
	return result;
}
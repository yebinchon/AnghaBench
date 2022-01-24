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
struct TYPE_3__ {scalar_t__ s4clk0; scalar_t__ s4clk1; scalar_t__ d4clk0; scalar_t__ d4clk1; } ;
union cvmx_spxx_clk_stat {TYPE_1__ s; void* u64; } ;
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  cvmx_spi_mode_t ;
struct TYPE_4__ {int cpu_clock_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 unsigned long long FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

int FUNC6(int interface, cvmx_spi_mode_t mode, int timeout)
{
	int clock_transitions;
	union cvmx_spxx_clk_stat stat;
	uint64_t timeout_time;
	uint64_t MS = FUNC4()->cpu_clock_hz / 1000;

	/*
	 * Regardless of operating mode, both Tx and Rx clocks must be
	 * present for the SPI interface to operate.
	 */
	FUNC1("SPI%d: Waiting to see TsClk...\n", interface);
	timeout_time = FUNC2() + 1000ull * MS * timeout;
	/*
	 * Require 100 clock transitions in order to avoid any noise
	 * in the beginning.
	 */
	clock_transitions = 100;
	do {
		stat.u64 = FUNC3(FUNC0(interface));
		if (stat.s.s4clk0 && stat.s.s4clk1 && clock_transitions) {
			/*
			 * We've seen a clock transition, so decrement
			 * the number we still need.
			 */
			clock_transitions--;
			FUNC5(FUNC0(interface), stat.u64);
			stat.s.s4clk0 = 0;
			stat.s.s4clk1 = 0;
		}
		if (FUNC2() > timeout_time) {
			FUNC1("SPI%d: Timeout\n", interface);
			return -1;
		}
	} while (stat.s.s4clk0 == 0 || stat.s.s4clk1 == 0);

	FUNC1("SPI%d: Waiting to see RsClk...\n", interface);
	timeout_time = FUNC2() + 1000ull * MS * timeout;
	/*
	 * Require 100 clock transitions in order to avoid any noise in the
	 * beginning.
	 */
	clock_transitions = 100;
	do {
		stat.u64 = FUNC3(FUNC0(interface));
		if (stat.s.d4clk0 && stat.s.d4clk1 && clock_transitions) {
			/*
			 * We've seen a clock transition, so decrement
			 * the number we still need
			 */
			clock_transitions--;
			FUNC5(FUNC0(interface), stat.u64);
			stat.s.d4clk0 = 0;
			stat.s.d4clk1 = 0;
		}
		if (FUNC2() > timeout_time) {
			FUNC1("SPI%d: Timeout\n", interface);
			return -1;
		}
	} while (stat.s.d4clk0 == 0 || stat.s.d4clk1 == 0);

	return 0;
}
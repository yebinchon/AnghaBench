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
struct hws_qsi_info_block {unsigned long cpu_speed; } ;
typedef  int /*<<< orphan*/  si ;

/* Variables and functions */
 int /*<<< orphan*/  ECAG_CPU_ATTRIBUTE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long cf_diag_cpu_speed ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct hws_qsi_info_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hws_qsi_info_block*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	if (FUNC1()) {			/* Sampling facility first */
		struct hws_qsi_info_block si;

		FUNC2(&si, 0, sizeof(si));
		if (!FUNC3(&si)) {
			cf_diag_cpu_speed = si.cpu_speed;
			return;
		}
	}

	if (FUNC4(34)) {		/* CPU speed extract static part */
		unsigned long mhz = FUNC0(ECAG_CPU_ATTRIBUTE, 0);

		if (mhz != -1UL)
			cf_diag_cpu_speed = mhz & 0xffffffff;
	}
}
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
struct TYPE_4__ {int en; } ;
union cvmx_ciu3_iscx_w1c {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_3__ {int intr; int intsn; } ;
union cvmx_ciu3_destx_pp_int {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
typedef  scalar_t__ u64 ;
struct octeon_ciu3_info {scalar_t__ ciu3_addr; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int CIU3_MBOX_PER_CORE ; 
 scalar_t__ OCTEON_IRQ_MBOX0 ; 
 struct octeon_ciu3_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  octeon_ciu3_info ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	union cvmx_ciu3_destx_pp_int dest_pp_int;
	struct octeon_ciu3_info *ciu3_info;
	u64 ciu3_addr;
	int core = FUNC3();

	ciu3_info = FUNC2(octeon_ciu3_info);
	ciu3_addr = ciu3_info->ciu3_addr;

	dest_pp_int.u64 = FUNC4(ciu3_addr + FUNC0(1 + 3 * core));

	if (FUNC7(dest_pp_int.s.intr)) {
		irq_hw_number_t intsn = dest_pp_int.s.intsn;
		int mbox = intsn - FUNC8(core);

		if (FUNC7(mbox >= 0 && mbox < CIU3_MBOX_PER_CORE)) {
			FUNC6(mbox + OCTEON_IRQ_MBOX0);
		} else {
			union cvmx_ciu3_iscx_w1c isc_w1c;
			u64 isc_w1c_addr = ciu3_addr + FUNC1(intsn);

			isc_w1c.u64 = 0;
			isc_w1c.s.en = 1;
			FUNC5(isc_w1c_addr, isc_w1c.u64);
			FUNC4(isc_w1c_addr);
			FUNC9();
		}
	} else {
		FUNC9();
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mce {int status; int addr; void* synd; void* ipid; void* misc; } ;
struct TYPE_6__ {scalar_t__ ser; } ;
struct TYPE_5__ {scalar_t__ smca; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* addr ) (int) ;int /*<<< orphan*/  (* misc ) (int) ;} ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (void*) ; 
 int MCI_STATUS_ADDRV ; 
 int MCI_STATUS_MISCV ; 
 int MCI_STATUS_SYNDV ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__ mca_cfg ; 
 TYPE_2__ mce_flags ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ msr_ops ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct mce *m, int i)
{
	if (m->status & MCI_STATUS_MISCV)
		m->misc = FUNC4(msr_ops.misc(i));

	if (m->status & MCI_STATUS_ADDRV) {
		m->addr = FUNC4(msr_ops.addr(i));

		/*
		 * Mask the reported address by the reported granularity.
		 */
		if (mca_cfg.ser && (m->status & MCI_STATUS_MISCV)) {
			u8 shift = FUNC1(m->misc);
			m->addr >>= shift;
			m->addr <<= shift;
		}

		/*
		 * Extract [55:<lsb>] where lsb is the least significant
		 * *valid* bit of the address bits.
		 */
		if (mce_flags.smca) {
			u8 lsb = (m->addr >> 56) & 0x3f;

			m->addr &= FUNC0(55, lsb);
		}
	}

	if (mce_flags.smca) {
		m->ipid = FUNC4(FUNC2(i));

		if (m->status & MCI_STATUS_SYNDV)
			m->synd = FUNC4(FUNC3(i));
	}
}
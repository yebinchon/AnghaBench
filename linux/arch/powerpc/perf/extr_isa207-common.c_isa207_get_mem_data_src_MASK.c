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
union perf_mem_data_src {int /*<<< orphan*/  val; } ;
typedef  int u64 ;
typedef  int u32 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int ISA207_SIER_DATA_SRC_MASK ; 
 int ISA207_SIER_DATA_SRC_SHIFT ; 
 int ISA207_SIER_LDST_MASK ; 
 int ISA207_SIER_LDST_SHIFT ; 
 int ISA207_SIER_TYPE_MASK ; 
 int ISA207_SIER_TYPE_SHIFT ; 
 int /*<<< orphan*/  LOAD ; 
 int /*<<< orphan*/  OP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PPMU_HAS_SIER ; 
 int /*<<< orphan*/  SPRN_SIER ; 
 int /*<<< orphan*/  STORE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(union perf_mem_data_src *dsrc, u32 flags,
							struct pt_regs *regs)
{
	u64 idx;
	u32 sub_idx;
	u64 sier;
	u64 val;

	/* Skip if no SIER support */
	if (!(flags & PPMU_HAS_SIER)) {
		dsrc->val = 0;
		return;
	}

	sier = FUNC2(SPRN_SIER);
	val = (sier & ISA207_SIER_TYPE_MASK) >> ISA207_SIER_TYPE_SHIFT;
	if (val == 1 || val == 2) {
		idx = (sier & ISA207_SIER_LDST_MASK) >> ISA207_SIER_LDST_SHIFT;
		sub_idx = (sier & ISA207_SIER_DATA_SRC_MASK) >> ISA207_SIER_DATA_SRC_SHIFT;

		dsrc->val = FUNC1(idx, sub_idx);
		dsrc->val |= (val == 1) ? FUNC0(OP, LOAD) : FUNC0(OP, STORE);
	}
}
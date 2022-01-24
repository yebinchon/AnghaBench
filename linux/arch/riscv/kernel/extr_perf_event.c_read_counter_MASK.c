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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_CYCLE ; 
 int /*<<< orphan*/  CSR_INSTRET ; 
 int /*<<< orphan*/  EINVAL ; 
 int RISCV_MAX_COUNTERS ; 
#define  RISCV_PMU_CYCLE 129 
#define  RISCV_PMU_INSTRET 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u64 FUNC2(int idx)
{
	u64 val = 0;

	switch (idx) {
	case RISCV_PMU_CYCLE:
		val = FUNC1(CSR_CYCLE);
		break;
	case RISCV_PMU_INSTRET:
		val = FUNC1(CSR_INSTRET);
		break;
	default:
		FUNC0(idx < 0 ||	idx > RISCV_MAX_COUNTERS);
		return -EINVAL;
	}

	return val;
}
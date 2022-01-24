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
struct TYPE_5__ {int doorbell; } ;
union cvmx_pko_mem_debug9 {TYPE_2__ cn38xx; void* u64; } ;
struct TYPE_6__ {int doorbell; } ;
union cvmx_pko_mem_debug8 {TYPE_3__ cn50xx; void* u64; } ;
struct TYPE_4__ {int dbell; } ;
union cvmx_npei_dmax_counts {TYPE_1__ s; void* u64; } ;
typedef  int cvmx_cmd_queue_id_t ;

/* Variables and functions */
#define  CVMX_CMD_QUEUE_DFA 133 
#define  CVMX_CMD_QUEUE_DMA_BASE 132 
#define  CVMX_CMD_QUEUE_END 131 
 int CVMX_CMD_QUEUE_INVALID_PARAM ; 
#define  CVMX_CMD_QUEUE_PKO_BASE 130 
#define  CVMX_CMD_QUEUE_RAID 129 
#define  CVMX_CMD_QUEUE_ZIP 128 
 scalar_t__ CVMX_ENABLE_PARAMETER_CHECKING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CVMX_PKO_MEM_DEBUG8 ; 
 int /*<<< orphan*/  CVMX_PKO_MEM_DEBUG9 ; 
 int /*<<< orphan*/  CVMX_PKO_REG_READ_IDX ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(cvmx_cmd_queue_id_t queue_id)
{
	if (CVMX_ENABLE_PARAMETER_CHECKING) {
		if (FUNC2(queue_id) == NULL)
			return CVMX_CMD_QUEUE_INVALID_PARAM;
	}

	/*
	 * The cast is here so gcc with check that all values in the
	 * cvmx_cmd_queue_id_t enumeration are here.
	 */
	switch ((cvmx_cmd_queue_id_t) (queue_id & 0xff0000)) {
	case CVMX_CMD_QUEUE_PKO_BASE:
		/*
		 * FIXME: Need atomic lock on
		 * CVMX_PKO_REG_READ_IDX. Right now we are normally
		 * called with the queue lock, so that is a SLIGHT
		 * amount of protection.
		 */
		FUNC4(CVMX_PKO_REG_READ_IDX, queue_id & 0xffff);
		if (FUNC1(OCTEON_CN3XXX)) {
			union cvmx_pko_mem_debug9 debug9;
			debug9.u64 = FUNC3(CVMX_PKO_MEM_DEBUG9);
			return debug9.cn38xx.doorbell;
		} else {
			union cvmx_pko_mem_debug8 debug8;
			debug8.u64 = FUNC3(CVMX_PKO_MEM_DEBUG8);
			return debug8.cn50xx.doorbell;
		}
	case CVMX_CMD_QUEUE_ZIP:
	case CVMX_CMD_QUEUE_DFA:
	case CVMX_CMD_QUEUE_RAID:
		/* FIXME: Implement other lengths */
		return 0;
	case CVMX_CMD_QUEUE_DMA_BASE:
		{
			union cvmx_npei_dmax_counts dmax_counts;
			dmax_counts.u64 =
			    FUNC3(FUNC0
					  (queue_id & 0x7));
			return dmax_counts.s.dbell;
		}
	case CVMX_CMD_QUEUE_END:
		return CVMX_CMD_QUEUE_INVALID_PARAM;
	}
	return CVMX_CMD_QUEUE_INVALID_PARAM;
}
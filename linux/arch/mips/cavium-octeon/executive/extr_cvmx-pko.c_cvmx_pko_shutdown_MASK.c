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
struct TYPE_4__ {int qid7; } ;
union cvmx_pko_reg_queue_ptrs1 {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_3__ {int tail; int queue; scalar_t__ buf_ptr; scalar_t__ qos_mask; int /*<<< orphan*/  port; scalar_t__ index; } ;
union cvmx_pko_mem_queue_ptrs {scalar_t__ u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CVMX_PKO_MAX_OUTPUT_QUEUES ; 
 int /*<<< orphan*/  CVMX_PKO_MEM_QUEUE_PTRS ; 
 int /*<<< orphan*/  CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID ; 
 int /*<<< orphan*/  CVMX_PKO_REG_QUEUE_PTRS1 ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(void)
{
	union cvmx_pko_mem_queue_ptrs config;
	int queue;

	FUNC4();

	for (queue = 0; queue < CVMX_PKO_MAX_OUTPUT_QUEUES; queue++) {
		config.u64 = 0;
		config.s.tail = 1;
		config.s.index = 0;
		config.s.port = CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID;
		config.s.queue = queue & 0x7f;
		config.s.qos_mask = 0;
		config.s.buf_ptr = 0;
		if (!FUNC1(OCTEON_CN3XXX)) {
			union cvmx_pko_reg_queue_ptrs1 config1;
			config1.u64 = 0;
			config1.s.qid7 = queue >> 7;
			FUNC5(CVMX_PKO_REG_QUEUE_PTRS1, config1.u64);
		}
		FUNC5(CVMX_PKO_MEM_QUEUE_PTRS, config.u64);
		FUNC3(FUNC0(queue));
	}
	FUNC2();
}
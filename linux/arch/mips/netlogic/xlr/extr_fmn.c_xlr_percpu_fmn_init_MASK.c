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
typedef  int /*<<< orphan*/  uint32_t ;
struct xlr_fmn_info {int /*<<< orphan*/  credit_config; } ;
struct TYPE_2__ {int* bucket_size; struct xlr_fmn_info* cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_FMN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 () ; 
 int nlm_threads_per_core ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 TYPE_1__ xlr_board_fmn_config ; 

void FUNC8(void)
{
	struct xlr_fmn_info *cpu_fmn_info;
	int *bucket_sizes;
	uint32_t flags;
	int id;

	FUNC0(FUNC6() != 0);
	id = FUNC4();

	bucket_sizes = xlr_board_fmn_config.bucket_size;
	cpu_fmn_info = &xlr_board_fmn_config.cpu[id];
	flags = FUNC3();

	/* Setup bucket sizes for the core. */
	FUNC7(0, bucket_sizes[id * 8 + 0]);
	FUNC7(1, bucket_sizes[id * 8 + 1]);
	FUNC7(2, bucket_sizes[id * 8 + 2]);
	FUNC7(3, bucket_sizes[id * 8 + 3]);
	FUNC7(4, bucket_sizes[id * 8 + 4]);
	FUNC7(5, bucket_sizes[id * 8 + 5]);
	FUNC7(6, bucket_sizes[id * 8 + 6]);
	FUNC7(7, bucket_sizes[id * 8 + 7]);

	/*
	 * For sending FMN messages, we need credits on the destination
	 * bucket. Program the credits this core has on the 128 possible
	 * destination buckets.
	 * We cannot use a loop here, because the the first argument has
	 * to be a constant integer value.
	 */
	FUNC1(0, cpu_fmn_info->credit_config);
	FUNC1(1, cpu_fmn_info->credit_config);
	FUNC1(2, cpu_fmn_info->credit_config);
	FUNC1(3, cpu_fmn_info->credit_config);
	FUNC1(4, cpu_fmn_info->credit_config);
	FUNC1(5, cpu_fmn_info->credit_config);
	FUNC1(6, cpu_fmn_info->credit_config);
	FUNC1(7, cpu_fmn_info->credit_config);
	FUNC1(8, cpu_fmn_info->credit_config);
	FUNC1(9, cpu_fmn_info->credit_config);
	FUNC1(10, cpu_fmn_info->credit_config);
	FUNC1(11, cpu_fmn_info->credit_config);
	FUNC1(12, cpu_fmn_info->credit_config);
	FUNC1(13, cpu_fmn_info->credit_config);
	FUNC1(14, cpu_fmn_info->credit_config);
	FUNC1(15, cpu_fmn_info->credit_config);

	/* enable FMN interrupts on this CPU */
	FUNC5(IRQ_FMN, (1 << nlm_threads_per_core) - 1);
	FUNC2(flags);
}
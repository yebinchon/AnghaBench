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
struct blk_mq_hw_ctx {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 

__attribute__((used)) static inline int FUNC2(struct blk_mq_hw_ctx *hctx)
{
	int cpu = FUNC1(hctx->cpumask, cpu_online_mask);

	if (cpu >= nr_cpu_ids)
		cpu = FUNC0(hctx->cpumask);
	return cpu;
}
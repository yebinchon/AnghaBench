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
typedef  scalar_t__ u64 ;
struct blk_rq_stat {int /*<<< orphan*/  nr_samples; int /*<<< orphan*/  batch; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct blk_rq_stat *stat, u64 value)
{
	stat->min = FUNC1(stat->min, value);
	stat->max = FUNC0(stat->max, value);
	stat->batch += value;
	stat->nr_samples++;
}
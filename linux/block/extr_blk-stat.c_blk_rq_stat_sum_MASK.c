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
struct blk_rq_stat {int nr_samples; int mean; scalar_t__ batch; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct blk_rq_stat *dst, struct blk_rq_stat *src)
{
	if (!src->nr_samples)
		return;

	dst->min = FUNC2(dst->min, src->min);
	dst->max = FUNC1(dst->max, src->max);

	dst->mean = FUNC0(src->batch + dst->mean * dst->nr_samples,
				dst->nr_samples + src->nr_samples);

	dst->nr_samples += src->nr_samples;
}
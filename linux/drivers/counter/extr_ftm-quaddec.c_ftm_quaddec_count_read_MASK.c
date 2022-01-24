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
typedef  int /*<<< orphan*/  uint32_t ;
struct ftm_quaddec {int dummy; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count_read_value {int dummy; } ;
struct counter_count {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTER_COUNT_POSITION ; 
 int /*<<< orphan*/  FTM_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct counter_count_read_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_quaddec* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct counter_device *counter,
				  struct counter_count *count,
				  struct counter_count_read_value *val)
{
	struct ftm_quaddec *const ftm = counter->priv;
	uint32_t cntval;

	FUNC1(ftm, FTM_CNT, &cntval);

	FUNC0(val, COUNTER_COUNT_POSITION, &cntval);

	return 0;
}
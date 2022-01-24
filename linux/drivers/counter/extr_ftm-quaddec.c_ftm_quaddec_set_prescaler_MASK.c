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
struct ftm_quaddec {int /*<<< orphan*/  ftm_quaddec_mutex; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ftm_quaddec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FTM_SC ; 
 int /*<<< orphan*/  FTM_SC_PS_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_quaddec*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_quaddec*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftm_quaddec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct counter_device *counter,
				     struct counter_count *count,
				     size_t cnt_mode)
{
	struct ftm_quaddec *ftm = counter->priv;

	FUNC4(&ftm->ftm_quaddec_mutex);

	FUNC1(ftm);
	FUNC0(ftm, FTM_SC, FTM_SC_PS_MASK, cnt_mode);
	FUNC3(ftm);

	/* Also resets the counter as it is undefined anyway now */
	FUNC2(ftm);

	FUNC5(&ftm->ftm_quaddec_mutex);
	return 0;
}
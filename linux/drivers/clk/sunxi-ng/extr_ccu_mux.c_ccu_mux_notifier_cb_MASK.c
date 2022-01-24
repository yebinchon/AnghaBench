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
struct notifier_block {int dummy; } ;
struct ccu_mux_nb {int /*<<< orphan*/  delay_us; int /*<<< orphan*/  original_index; int /*<<< orphan*/  cm; int /*<<< orphan*/  common; int /*<<< orphan*/  bypass_index; } ;

/* Variables and functions */
 unsigned long POST_RATE_CHANGE ; 
 unsigned long PRE_RATE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 struct ccu_mux_nb* FUNC3 (struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb,
			       unsigned long event, void *data)
{
	struct ccu_mux_nb *mux = FUNC3(nb);
	int ret = 0;

	if (event == PRE_RATE_CHANGE) {
		mux->original_index = FUNC0(mux->common,
								mux->cm);
		ret = FUNC1(mux->common, mux->cm,
						mux->bypass_index);
	} else if (event == POST_RATE_CHANGE) {
		ret = FUNC1(mux->common, mux->cm,
						mux->original_index);
	}

	FUNC4(mux->delay_us);

	return FUNC2(ret);
}
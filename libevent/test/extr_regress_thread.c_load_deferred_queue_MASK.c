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
struct deferred_test_data {int /*<<< orphan*/ * cbs; int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  THREAD_FN ;

/* Variables and functions */
 size_t CB_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  deferred_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static THREAD_FN
FUNC4(void *arg)
{
	struct deferred_test_data *data = arg;
	size_t i;

	for (i = 0; i < CB_COUNT; ++i) {
		FUNC2(&data->cbs[i], 0, deferred_callback,
		    NULL);
		FUNC3(data->queue, &data->cbs[i]);
		FUNC0(1);
	}

	FUNC1();
}
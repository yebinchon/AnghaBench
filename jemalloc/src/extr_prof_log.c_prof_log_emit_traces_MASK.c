#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_5__ {size_t len; int /*<<< orphan*/ * vec; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ bt; } ;
typedef  TYPE_2__ prof_bt_node_t ;
typedef  int /*<<< orphan*/  emitter_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  emitter_type_string ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 TYPE_2__* log_bt_first ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(tsd_t *tsd, emitter_t *emitter) {
	FUNC2(emitter, "stack_traces");
	prof_bt_node_t *bt_node = log_bt_first;
	prof_bt_node_t *bt_old_node;
	/*
	 * Calculate how many hex digits we need: twice number of bytes, two for
	 * "0x", and then one more for terminating '\0'.
	 */
	char buf[2 * sizeof(intptr_t) + 3];
	size_t buf_sz = sizeof(buf);
	while (bt_node != NULL) {
		FUNC0(emitter);
		size_t i;
		for (i = 0; i < bt_node->bt.len; i++) {
			FUNC5(buf, buf_sz, "%p", bt_node->bt.vec[i]);
			char *trace_str = buf;
			FUNC3(emitter, emitter_type_string,
			    &trace_str);
		}
		FUNC1(emitter);

		bt_old_node = bt_node;
		bt_node = bt_node->next;
		FUNC4(FUNC6(tsd), bt_old_node, NULL, NULL, true, true);
	}
	FUNC1(emitter);
}
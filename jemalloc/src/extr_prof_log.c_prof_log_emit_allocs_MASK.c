#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  usize; int /*<<< orphan*/  free_time_ns; int /*<<< orphan*/  alloc_time_ns; int /*<<< orphan*/  free_bt_ind; int /*<<< orphan*/  alloc_bt_ind; int /*<<< orphan*/  free_thr_ind; int /*<<< orphan*/  alloc_thr_ind; } ;
typedef  TYPE_1__ prof_alloc_node_t ;
typedef  int /*<<< orphan*/  emitter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  emitter_type_size ; 
 int /*<<< orphan*/  emitter_type_uint64 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* log_alloc_first ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(tsd_t *tsd, emitter_t *emitter) {
	FUNC1(emitter, "allocations");
	prof_alloc_node_t *alloc_node = log_alloc_first;
	prof_alloc_node_t *alloc_old_node;
	while (alloc_node != NULL) {
		FUNC3(emitter);

		FUNC2(emitter, "alloc_thread", emitter_type_size,
		    &alloc_node->alloc_thr_ind);

		FUNC2(emitter, "free_thread", emitter_type_size,
		    &alloc_node->free_thr_ind);

		FUNC2(emitter, "alloc_trace", emitter_type_size,
		    &alloc_node->alloc_bt_ind);

		FUNC2(emitter, "free_trace", emitter_type_size,
		    &alloc_node->free_bt_ind);

		FUNC2(emitter, "alloc_timestamp",
		    emitter_type_uint64, &alloc_node->alloc_time_ns);

		FUNC2(emitter, "free_timestamp", emitter_type_uint64,
		    &alloc_node->free_time_ns);

		FUNC2(emitter, "usize", emitter_type_uint64,
		    &alloc_node->usize);

		FUNC4(emitter);

		alloc_old_node = alloc_node;
		alloc_node = alloc_node->next;
		FUNC5(FUNC6(tsd), alloc_old_node, NULL, NULL, true,
		    true);
	}
	FUNC0(emitter);
}
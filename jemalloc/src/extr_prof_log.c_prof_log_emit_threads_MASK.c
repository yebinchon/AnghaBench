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
struct TYPE_4__ {char* thr_uid; char* name; struct TYPE_4__* next; } ;
typedef  TYPE_1__ prof_thr_node_t ;
typedef  int /*<<< orphan*/  emitter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  emitter_type_string ; 
 int /*<<< orphan*/  emitter_type_uint64 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* log_thr_first ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(tsd_t *tsd, emitter_t *emitter) {
	FUNC1(emitter, "threads");
	prof_thr_node_t *thr_node = log_thr_first;
	prof_thr_node_t *thr_old_node;
	while (thr_node != NULL) {
		FUNC3(emitter);

		FUNC2(emitter, "thr_uid", emitter_type_uint64,
		    &thr_node->thr_uid);

		char *thr_name = thr_node->name;

		FUNC2(emitter, "thr_name", emitter_type_string,
		    &thr_name);

		FUNC4(emitter);
		thr_old_node = thr_node;
		thr_node = thr_node->next;
		FUNC5(FUNC6(tsd), thr_old_node, NULL, NULL, true, true);
	}
	FUNC0(emitter);
}
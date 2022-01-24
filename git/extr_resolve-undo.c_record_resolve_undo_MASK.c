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
struct string_list_item {struct resolve_undo_info* util; } ;
struct string_list {int strdup_strings; } ;
struct resolve_undo_info {int /*<<< orphan*/ * mode; int /*<<< orphan*/ * oid; } ;
struct index_state {struct string_list* resolve_undo; } ;
struct cache_entry {int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct string_list_item* FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int) ; 

void FUNC4(struct index_state *istate, struct cache_entry *ce)
{
	struct string_list_item *lost;
	struct resolve_undo_info *ui;
	struct string_list *resolve_undo;
	int stage = FUNC0(ce);

	if (!stage)
		return;

	if (!istate->resolve_undo) {
		resolve_undo = FUNC3(1, sizeof(*resolve_undo));
		resolve_undo->strdup_strings = 1;
		istate->resolve_undo = resolve_undo;
	}
	resolve_undo = istate->resolve_undo;
	lost = FUNC2(resolve_undo, ce->name);
	if (!lost->util)
		lost->util = FUNC3(1, sizeof(*ui));
	ui = lost->util;
	FUNC1(&ui->oid[stage - 1], &ce->oid);
	ui->mode[stage - 1] = ce->ce_mode;
}
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
struct string_list {int dummy; } ;
struct index_state {int /*<<< orphan*/  cache_changed; struct string_list* resolve_undo; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_UNDO_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int) ; 

void FUNC2(struct index_state *istate)
{
	struct string_list *resolve_undo = istate->resolve_undo;
	if (!resolve_undo)
		return;
	FUNC1(resolve_undo, 1);
	FUNC0(resolve_undo);
	istate->resolve_undo = NULL;
	istate->cache_changed |= RESOLVE_UNDO_CHANGED;
}
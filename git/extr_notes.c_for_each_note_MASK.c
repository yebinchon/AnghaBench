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
struct notes_tree {int /*<<< orphan*/  root; int /*<<< orphan*/  initialized; } ;
typedef  int /*<<< orphan*/  each_note_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct notes_tree default_notes_tree ; 
 int FUNC1 (struct notes_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 

int FUNC2(struct notes_tree *t, int flags, each_note_fn fn,
		void *cb_data)
{
	if (!t)
		t = &default_notes_tree;
	FUNC0(t->initialized);
	return FUNC1(t, t->root, 0, 0, flags, fn, cb_data);
}
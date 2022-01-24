#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct notes_tree {TYPE_1__* ref; TYPE_1__* prev_non_note; TYPE_1__* first_non_note; TYPE_1__* root; } ;
struct TYPE_3__ {struct TYPE_3__* path; struct TYPE_3__* next; } ;

/* Variables and functions */
 struct notes_tree default_notes_tree ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct notes_tree*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct notes_tree *t)
{
	if (!t)
		t = &default_notes_tree;
	if (t->root)
		FUNC2(t->root);
	FUNC0(t->root);
	while (t->first_non_note) {
		t->prev_non_note = t->first_non_note->next;
		FUNC0(t->first_non_note->path);
		FUNC0(t->first_non_note);
		t->first_non_note = t->prev_non_note;
	}
	FUNC0(t->ref);
	FUNC1(t, 0, sizeof(struct notes_tree));
}
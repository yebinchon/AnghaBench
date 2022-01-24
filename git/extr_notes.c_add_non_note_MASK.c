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
struct notes_tree {struct non_note* prev_non_note; struct non_note* first_non_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct non_note {char* path; unsigned int mode; struct non_note* next; TYPE_1__ oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct non_note*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*) ; 
 scalar_t__ FUNC3 (struct non_note*,struct non_note*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct notes_tree *t, char *path,
		unsigned int mode, const unsigned char *sha1)
{
	struct non_note *p = t->prev_non_note, *n;
	n = (struct non_note *) FUNC6(sizeof(struct non_note));
	n->next = NULL;
	n->path = path;
	n->mode = mode;
	FUNC2(n->oid.hash, sha1);
	t->prev_non_note = n;

	if (!t->first_non_note) {
		t->first_non_note = n;
		return;
	}

	if (FUNC3(p, n) < 0)
		; /* do nothing  */
	else if (FUNC3(t->first_non_note, n) <= 0)
		p = t->first_non_note;
	else {
		/* n sorts before t->first_non_note */
		n->next = t->first_non_note;
		t->first_non_note = n;
		return;
	}

	/* n sorts equal or after p */
	while (p->next && FUNC3(p->next, n) <= 0)
		p = p->next;

	if (FUNC3(p, n) == 0) { /* n ~= p; overwrite p with n */
		FUNC0(FUNC5(p->path, n->path) == 0);
		p->mode = n->mode;
		FUNC4(&p->oid, &n->oid);
		FUNC1(n);
		t->prev_non_note = p;
		return;
	}

	/* n sorts between p and p->next */
	n->next = p->next;
	p->next = n;
}
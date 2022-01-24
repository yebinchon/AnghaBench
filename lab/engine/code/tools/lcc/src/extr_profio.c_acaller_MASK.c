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
struct func {struct caller* callers; } ;
struct caller {char* name; char* file; int x; int y; scalar_t__ count; struct caller* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct caller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  FUNC1 (struct func*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(char *caller, char *file, int x, int y, int count, struct func *callee) {
	struct caller *q;

	FUNC1(callee);
	for (q = callee->callers; q && (caller != q->name
		|| file != q->file || x != q->x || y != q->y); q = q->link)
		;
	if (!q) {
		struct caller **r;
		FUNC0(q, PERM);
		q->name = caller;
		q->file = file;
		q->x = x;
		q->y = y;
		q->count = 0;
		for (r = &callee->callers; *r && (FUNC2(q->name, (*r)->name) > 0
			|| FUNC2(q->file, (*r)->file) > 0 || q->y > (*r)->y || q->y > (*r)->y); r = &(*r)->link)
			;
		q->link = *r;
		*r = q;
	}
	q->count += count;
}
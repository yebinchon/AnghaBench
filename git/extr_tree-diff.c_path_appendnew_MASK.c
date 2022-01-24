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
struct strbuf {int len; char const* buf; } ;
struct object_id {int dummy; } ;
struct combine_diff_path {char* path; unsigned int mode; int /*<<< orphan*/  oid; int /*<<< orphan*/ * parent; struct combine_diff_path* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct combine_diff_path*) ; 
 size_t FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 struct object_id const null_oid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id const*) ; 
 size_t FUNC4 (int,int) ; 
 struct combine_diff_path* FUNC5 (size_t) ; 

__attribute__((used)) static struct combine_diff_path *FUNC6(struct combine_diff_path *last,
	int nparent, const struct strbuf *base, const char *path, int pathlen,
	unsigned mode, const struct object_id *oid)
{
	struct combine_diff_path *p;
	size_t len = FUNC4(base->len, pathlen);
	size_t alloclen = FUNC1(nparent, len);

	/* if last->next is !NULL - it is a pre-allocated memory, we can reuse */
	p = last->next;
	if (p && (alloclen > (intptr_t)p->next)) {
		FUNC0(p);
	}

	if (!p) {
		p = FUNC5(alloclen);

		/*
		 * until we go to it next round, .next holds how many bytes we
		 * allocated (for faster realloc - we don't need copying old data).
		 */
		p->next = (struct combine_diff_path *)(intptr_t)alloclen;
	}

	last->next = p;

	p->path = (char *)&(p->parent[nparent]);
	FUNC2(p->path, base->buf, base->len);
	FUNC2(p->path + base->len, path, pathlen);
	p->path[len] = 0;
	p->mode = mode;
	FUNC3(&p->oid, oid ? oid : &null_oid);

	return p;
}
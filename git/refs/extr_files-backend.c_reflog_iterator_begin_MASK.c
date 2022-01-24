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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_store {int dummy; } ;
struct ref_iterator {int dummy; } ;
struct files_reflog_iterator {struct ref_store* ref_store; struct dir_iterator* dir_iterator; struct ref_iterator base; } ;
struct dir_iterator {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct ref_iterator*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dir_iterator* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ref_iterator* FUNC2 () ; 
 int /*<<< orphan*/  files_reflog_iterator_vtable ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 struct files_reflog_iterator* FUNC5 (int,int) ; 

__attribute__((used)) static struct ref_iterator *FUNC6(struct ref_store *ref_store,
						  const char *gitdir)
{
	struct dir_iterator *diter;
	struct files_reflog_iterator *iter;
	struct ref_iterator *ref_iterator;
	struct strbuf sb = STRBUF_INIT;

	FUNC3(&sb, "%s/logs", gitdir);

	diter = FUNC1(sb.buf, 0);
	if (!diter) {
		FUNC4(&sb);
		return FUNC2();
	}

	iter = FUNC5(1, sizeof(*iter));
	ref_iterator = &iter->base;

	FUNC0(ref_iterator, &files_reflog_iterator_vtable, 0);
	iter->dir_iterator = diter;
	iter->ref_store = ref_store;
	FUNC4(&sb);

	return ref_iterator;
}
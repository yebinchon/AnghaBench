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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int /*<<< orphan*/ * update_ref; int /*<<< orphan*/  dirty; int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,struct notes_tree*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 
 struct notes_tree default_notes_tree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct repository *r, struct notes_tree *t, const char *msg)
{
	struct strbuf buf = STRBUF_INIT;
	struct object_id commit_oid;

	if (!t)
		t = &default_notes_tree;
	if (!t->initialized || !t->update_ref || !*t->update_ref)
		FUNC2(FUNC0("Cannot commit uninitialized/unreferenced notes tree"));
	if (!t->dirty)
		return; /* don't have to commit an unchanged tree */

	/* Prepare commit message and reflog message */
	FUNC3(&buf, msg);
	FUNC4(&buf);

	FUNC1(r, t, NULL, buf.buf, buf.len, &commit_oid);
	FUNC5(&buf, 0, "notes: ", 7); /* commit message starts at index 7 */
	FUNC7(buf.buf, t->update_ref, &commit_oid, NULL, 0,
		   UPDATE_REFS_DIE_ON_ERR);

	FUNC6(&buf);
}
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
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct tmp_objdir {TYPE_1__ path; int /*<<< orphan*/  env; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERNATE_DB_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DB_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_QUARANTINE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remove_tmp_objdir ; 
 int /*<<< orphan*/  remove_tmp_objdir_on_signal ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct tmp_objdir* the_tmp_objdir ; 
 int /*<<< orphan*/  FUNC13 (struct tmp_objdir*) ; 
 int /*<<< orphan*/  FUNC14 (struct tmp_objdir*) ; 
 struct tmp_objdir* FUNC15 (int) ; 

struct tmp_objdir *FUNC16(void)
{
	static int installed_handlers;
	struct tmp_objdir *t;

	if (the_tmp_objdir)
		FUNC0("only one tmp_objdir can be used at a time");

	t = FUNC15(sizeof(*t));
	FUNC12(&t->path, 0);
	FUNC2(&t->env);

	FUNC10(&t->path, "%s/incoming-XXXXXX", FUNC6());

	/*
	 * Grow the strbuf beyond any filename we expect to be placed in it.
	 * If tmp_objdir_destroy() is called by a signal handler, then
	 * we should be able to use the strbuf to remove files without
	 * having to call malloc.
	 */
	FUNC11(&t->path, 1024);

	if (!FUNC7(t->path.buf)) {
		/* free, not destroy, as we never touched the filesystem */
		FUNC14(t);
		return NULL;
	}

	the_tmp_objdir = t;
	if (!installed_handlers) {
		FUNC3(remove_tmp_objdir);
		FUNC9(remove_tmp_objdir_on_signal);
		installed_handlers++;
	}

	if (FUNC8(t->path.buf)) {
		FUNC13(t);
		return NULL;
	}

	FUNC4(&t->env, ALTERNATE_DB_ENVIRONMENT,
		   FUNC1(FUNC6()));
	FUNC5(&t->env, DB_ENVIRONMENT, FUNC1(t->path.buf));
	FUNC5(&t->env, GIT_QUARANTINE_ENVIRONMENT,
		    FUNC1(t->path.buf));

	return t;
}
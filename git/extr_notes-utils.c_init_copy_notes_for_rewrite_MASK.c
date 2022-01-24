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
struct notes_rewrite_cfg {char const* cmd; int enabled; int strdup_strings; int refs_from_env; int mode_from_env; struct notes_rewrite_cfg* refs; int /*<<< orphan*/  trees; int /*<<< orphan*/  nr; int /*<<< orphan*/  combine; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_NOTES_REWRITE_MODE_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_NOTES_REWRITE_REF_ENVIRONMENT ; 
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  combine_notes_concatenate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct notes_rewrite_cfg*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct notes_rewrite_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (struct notes_rewrite_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  notes_rewrite_config ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct notes_rewrite_cfg*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct notes_rewrite_cfg*,int /*<<< orphan*/ ) ; 
 struct notes_rewrite_cfg* FUNC9 (int,int) ; 
 struct notes_rewrite_cfg* FUNC10 (int) ; 

struct notes_rewrite_cfg *FUNC11(const char *cmd)
{
	struct notes_rewrite_cfg *c = FUNC10(sizeof(struct notes_rewrite_cfg));
	const char *rewrite_mode_env = FUNC3(GIT_NOTES_REWRITE_MODE_ENVIRONMENT);
	const char *rewrite_refs_env = FUNC3(GIT_NOTES_REWRITE_REF_ENVIRONMENT);
	c->cmd = cmd;
	c->enabled = 1;
	c->combine = combine_notes_concatenate;
	c->refs = FUNC9(1, sizeof(struct string_list));
	c->refs->strdup_strings = 1;
	c->refs_from_env = 0;
	c->mode_from_env = 0;
	if (rewrite_mode_env) {
		c->mode_from_env = 1;
		c->combine = FUNC6(rewrite_mode_env);
		if (!c->combine)
			/*
			 * TRANSLATORS: The first %s is the name of
			 * the environment variable, the second %s is
			 * its value.
			 */
			FUNC1(FUNC0("Bad %s value: '%s'"), GIT_NOTES_REWRITE_MODE_ENVIRONMENT,
					rewrite_mode_env);
	}
	if (rewrite_refs_env) {
		c->refs_from_env = 1;
		FUNC7(c->refs, rewrite_refs_env);
	}
	FUNC4(notes_rewrite_config, c);
	if (!c->enabled || !c->refs->nr) {
		FUNC8(c->refs, 0);
		FUNC2(c->refs);
		FUNC2(c);
		return NULL;
	}
	c->trees = FUNC5(c->refs, NOTES_INIT_WRITABLE);
	FUNC8(c->refs, 0);
	FUNC2(c->refs);
	return c;
}
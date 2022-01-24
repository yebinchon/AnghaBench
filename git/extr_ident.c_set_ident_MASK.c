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

/* Variables and functions */
 int /*<<< orphan*/  IDENT_MAIL_GIVEN ; 
 int /*<<< orphan*/  IDENT_NAME_GIVEN ; 
 int /*<<< orphan*/  author_ident_explicitly_given ; 
 int /*<<< orphan*/  committer_ident_explicitly_given ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  git_author_email ; 
 int /*<<< orphan*/  git_author_name ; 
 int /*<<< orphan*/  git_committer_email ; 
 int /*<<< orphan*/  git_committer_name ; 
 int /*<<< orphan*/  git_default_email ; 
 int /*<<< orphan*/  git_default_name ; 
 int /*<<< orphan*/  ident_config_given ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *var, const char *value)
{
	if (!FUNC3(var, "author.name")) {
		if (!value)
			return FUNC0(var);
		FUNC2(&git_author_name);
		FUNC1(&git_author_name, value);
		author_ident_explicitly_given |= IDENT_NAME_GIVEN;
		ident_config_given |= IDENT_NAME_GIVEN;
		return 0;
	}

	if (!FUNC3(var, "author.email")) {
		if (!value)
			return FUNC0(var);
		FUNC2(&git_author_email);
		FUNC1(&git_author_email, value);
		author_ident_explicitly_given |= IDENT_MAIL_GIVEN;
		ident_config_given |= IDENT_MAIL_GIVEN;
		return 0;
	}

	if (!FUNC3(var, "committer.name")) {
		if (!value)
			return FUNC0(var);
		FUNC2(&git_committer_name);
		FUNC1(&git_committer_name, value);
		committer_ident_explicitly_given |= IDENT_NAME_GIVEN;
		ident_config_given |= IDENT_NAME_GIVEN;
		return 0;
	}

	if (!FUNC3(var, "committer.email")) {
		if (!value)
			return FUNC0(var);
		FUNC2(&git_committer_email);
		FUNC1(&git_committer_email, value);
		committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
		ident_config_given |= IDENT_MAIL_GIVEN;
		return 0;
	}

	if (!FUNC3(var, "user.name")) {
		if (!value)
			return FUNC0(var);
		FUNC2(&git_default_name);
		FUNC1(&git_default_name, value);
		committer_ident_explicitly_given |= IDENT_NAME_GIVEN;
		author_ident_explicitly_given |= IDENT_NAME_GIVEN;
		ident_config_given |= IDENT_NAME_GIVEN;
		return 0;
	}

	if (!FUNC3(var, "user.email")) {
		if (!value)
			return FUNC0(var);
		FUNC2(&git_default_email);
		FUNC1(&git_default_email, value);
		committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
		author_ident_explicitly_given |= IDENT_MAIL_GIVEN;
		ident_config_given |= IDENT_MAIL_GIVEN;
		return 0;
	}

	return 0;
}
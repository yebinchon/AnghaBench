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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(const char *name, const char *email)
{
	FUNC0("GIT_AUTHOR_NAME", name,
		   &author_ident_explicitly_given, IDENT_NAME_GIVEN);
	FUNC0("GIT_AUTHOR_EMAIL", email,
		   &author_ident_explicitly_given, IDENT_MAIL_GIVEN);
	FUNC0("GIT_COMMITTER_NAME", name,
		   &committer_ident_explicitly_given, IDENT_NAME_GIVEN);
	FUNC0("GIT_COMMITTER_EMAIL", email,
		   &committer_ident_explicitly_given, IDENT_MAIL_GIVEN);
}
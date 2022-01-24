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
 int /*<<< orphan*/  WANT_COMMITTER_IDENT ; 
 int /*<<< orphan*/  committer_ident_explicitly_given ; 
 char const* FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC1 (char*) ; 

const char *FUNC2(int flag)
{
	if (FUNC1("GIT_COMMITTER_NAME"))
		committer_ident_explicitly_given |= IDENT_NAME_GIVEN;
	if (FUNC1("GIT_COMMITTER_EMAIL"))
		committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
	return FUNC0(FUNC1("GIT_COMMITTER_NAME"),
			 FUNC1("GIT_COMMITTER_EMAIL"),
			 WANT_COMMITTER_IDENT,
			 FUNC1("GIT_COMMITTER_DATE"),
			 flag);
}
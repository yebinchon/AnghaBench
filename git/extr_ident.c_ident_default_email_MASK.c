#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int IDENT_MAIL_GIVEN ; 
 int author_ident_explicitly_given ; 
 int committer_ident_explicitly_given ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_email_is_bogus ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 TYPE_1__ git_default_email ; 
 int ident_config_given ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

const char *FUNC7(void)
{
	if (!(ident_config_given & IDENT_MAIL_GIVEN) && !git_default_email.len) {
		const char *email = FUNC2("EMAIL");

		if (email && email[0]) {
			FUNC4(&git_default_email, email);
			committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
			author_ident_explicitly_given |= IDENT_MAIL_GIVEN;
		} else if ((email = FUNC3()) && email[0]) {
			FUNC4(&git_default_email, email);
			FUNC1((char *)email);
		} else
			FUNC0(FUNC6(&default_email_is_bogus),
				   &git_default_email, &default_email_is_bogus);
		FUNC5(&git_default_email);
	}
	return git_default_email.buf;
}
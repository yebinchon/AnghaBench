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
typedef  enum want_ident { ____Placeholder_want_ident } want_ident ;

/* Variables and functions */
 int IDENT_NO_DATE ; 
 int IDENT_STRICT ; 
#define  WANT_AUTHOR_IDENT 130 
#define  WANT_BLANK_IDENT 129 
#define  WANT_COMMITTER_IDENT 128 
 char const* FUNC0 (char*,char*,int,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (char*) ; 

const char *FUNC2(enum want_ident whose_ident)
{
	char *name = NULL;
	char *email = NULL;

	switch (whose_ident) {
	case WANT_BLANK_IDENT:
		break;
	case WANT_AUTHOR_IDENT:
		name = FUNC1("GIT_AUTHOR_NAME");
		email = FUNC1("GIT_AUTHOR_EMAIL");
		break;
	case WANT_COMMITTER_IDENT:
		name = FUNC1("GIT_COMMITTER_NAME");
		email = FUNC1("GIT_COMMITTER_EMAIL");
		break;
	}
	return FUNC0(name, email, whose_ident, NULL,
			IDENT_STRICT | IDENT_NO_DATE);
}
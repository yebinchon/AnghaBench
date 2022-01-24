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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  PROTOCOL_ALLOW_ALWAYS 130 
#define  PROTOCOL_ALLOW_NEVER 129 
#define  PROTOCOL_ALLOW_USER_ONLY 128 
 int FUNC1 (char const*) ; 
 int FUNC2 (char*,int) ; 
 struct string_list* FUNC3 () ; 
 int FUNC4 (struct string_list const*,char const*) ; 

int FUNC5(const char *type, int from_user)
{
	const struct string_list *whitelist = FUNC3();
	if (whitelist)
		return FUNC4(whitelist, type);

	switch (FUNC1(type)) {
	case PROTOCOL_ALLOW_ALWAYS:
		return 1;
	case PROTOCOL_ALLOW_NEVER:
		return 0;
	case PROTOCOL_ALLOW_USER_ONLY:
		if (from_user < 0)
			from_user = FUNC2("GIT_PROTOCOL_FROM_USER", 1);
		return from_user;
	}

	FUNC0("invalid protocol_allow_config type");
}
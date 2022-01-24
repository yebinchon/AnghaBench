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
typedef  enum protocol_allow_config { ____Placeholder_protocol_allow_config } protocol_allow_config ;

/* Variables and functions */
 int PROTOCOL_ALLOW_ALWAYS ; 
 int PROTOCOL_ALLOW_NEVER ; 
 int PROTOCOL_ALLOW_USER_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 char* FUNC4 (char*,char const*) ; 

__attribute__((used)) static enum protocol_allow_config FUNC5(const char *type)
{
	char *key = FUNC4("protocol.%s.allow", type);
	char *value;

	/* first check the per-protocol config */
	if (!FUNC1(key, &value)) {
		enum protocol_allow_config ret =
			FUNC2(key, value);
		FUNC0(key);
		FUNC0(value);
		return ret;
	}
	FUNC0(key);

	/* if defined, fallback to user-defined default for unknown protocols */
	if (!FUNC1("protocol.allow", &value)) {
		enum protocol_allow_config ret =
			FUNC2("protocol.allow", value);
		FUNC0(value);
		return ret;
	}

	/* fallback to built-in defaults */
	/* known safe */
	if (!FUNC3(type, "http") ||
	    !FUNC3(type, "https") ||
	    !FUNC3(type, "git") ||
	    !FUNC3(type, "ssh") ||
	    !FUNC3(type, "file"))
		return PROTOCOL_ALLOW_ALWAYS;

	/* known scary; err on the side of caution */
	if (!FUNC3(type, "ext"))
		return PROTOCOL_ALLOW_NEVER;

	/* unknown; by default let them be used only directly by the user */
	return PROTOCOL_ALLOW_USER_ONLY;
}
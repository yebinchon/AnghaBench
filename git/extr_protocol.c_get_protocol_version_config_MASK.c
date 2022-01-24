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
typedef  enum protocol_version { ____Placeholder_protocol_version } protocol_version ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const**) ; 
 int FUNC3 (char const*) ; 
 int protocol_unknown_version ; 
 int protocol_v0 ; 

enum protocol_version FUNC4(void)
{
	const char *value;
	enum protocol_version retval = protocol_v0;
	const char *git_test_k = "GIT_TEST_PROTOCOL_VERSION";
	const char *git_test_v = FUNC1(git_test_k);

	if (!FUNC2("protocol.version", &value)) {
		enum protocol_version version = FUNC3(value);

		if (version == protocol_unknown_version)
			FUNC0("unknown value for config 'protocol.version': %s",
			    value);

		retval = version;
	}

	if (git_test_v && *git_test_v) {
		enum protocol_version env = FUNC3(git_test_v);

		if (env == protocol_unknown_version)
			FUNC0("unknown value for %s: %s", git_test_k, git_test_v);
		if (retval < env)
			retval = env;
	}

	return retval;
}
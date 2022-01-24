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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum protocol_allow_config FUNC3(const char *key,
							const char *value)
{
	if (!FUNC2(value, "always"))
		return PROTOCOL_ALLOW_ALWAYS;
	else if (!FUNC2(value, "never"))
		return PROTOCOL_ALLOW_NEVER;
	else if (!FUNC2(value, "user"))
		return PROTOCOL_ALLOW_USER_ONLY;

	FUNC1(FUNC0("unknown value for config '%s': %s"), key, value);
}
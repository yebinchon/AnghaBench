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
typedef  int /*<<< orphan*/  git_configmap_value ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  GIT_EOL_CRLF ; 
 int /*<<< orphan*/  GIT_EOL_LF ; 
 int /*<<< orphan*/  GIT_EOL_UNSET ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static git_configmap_value FUNC2(const char *value)
{
	if (FUNC0(value))
		;
	else if (FUNC1(value, "lf") == 0)
		return GIT_EOL_LF;
	else if (FUNC1(value, "crlf") == 0)
		return GIT_EOL_CRLF;

	return GIT_EOL_UNSET;
}
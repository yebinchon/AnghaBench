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
typedef  int /*<<< orphan*/  git_crlf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  GIT_CRLF_AUTO ; 
 int /*<<< orphan*/  GIT_CRLF_BINARY ; 
 int /*<<< orphan*/  GIT_CRLF_TEXT ; 
 int /*<<< orphan*/  GIT_CRLF_TEXT_INPUT ; 
 int /*<<< orphan*/  GIT_CRLF_UNDEFINED ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static git_crlf_t FUNC4(const char *value)
{
	if (FUNC1(value))
		return GIT_CRLF_TEXT;
	else if (FUNC0(value))
		return GIT_CRLF_BINARY;
	else if (FUNC2(value))
		;
	else if (FUNC3(value, "input") == 0)
		return GIT_CRLF_TEXT_INPUT;
	else if (FUNC3(value, "auto") == 0)
		return GIT_CRLF_AUTO;

	return GIT_CRLF_UNDEFINED;
}
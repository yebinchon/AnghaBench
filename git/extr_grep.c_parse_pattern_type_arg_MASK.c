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
 int GREP_PATTERN_TYPE_BRE ; 
 int GREP_PATTERN_TYPE_ERE ; 
 int GREP_PATTERN_TYPE_FIXED ; 
 int GREP_PATTERN_TYPE_PCRE ; 
 int GREP_PATTERN_TYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *opt, const char *arg)
{
	if (!FUNC1(arg, "default"))
		return GREP_PATTERN_TYPE_UNSPECIFIED;
	else if (!FUNC1(arg, "basic"))
		return GREP_PATTERN_TYPE_BRE;
	else if (!FUNC1(arg, "extended"))
		return GREP_PATTERN_TYPE_ERE;
	else if (!FUNC1(arg, "fixed"))
		return GREP_PATTERN_TYPE_FIXED;
	else if (!FUNC1(arg, "perl"))
		return GREP_PATTERN_TYPE_PCRE;
	FUNC0("bad %s argument: %s", opt, arg);
}
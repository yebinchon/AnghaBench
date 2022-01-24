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
typedef  enum date_mode_type { ____Placeholder_date_mode_type } date_mode_type ;

/* Variables and functions */
 int DATE_HUMAN ; 
 int DATE_ISO8601 ; 
 int DATE_ISO8601_STRICT ; 
 int DATE_NORMAL ; 
 int DATE_RAW ; 
 int DATE_RELATIVE ; 
 int DATE_RFC2822 ; 
 int DATE_SHORT ; 
 int DATE_STRFTIME ; 
 int DATE_UNIX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,char const**) ; 

__attribute__((used)) static enum date_mode_type FUNC2(const char *format, const char **end)
{
	if (FUNC1(format, "relative", end))
		return DATE_RELATIVE;
	if (FUNC1(format, "iso8601-strict", end) ||
	    FUNC1(format, "iso-strict", end))
		return DATE_ISO8601_STRICT;
	if (FUNC1(format, "iso8601", end) ||
	    FUNC1(format, "iso", end))
		return DATE_ISO8601;
	if (FUNC1(format, "rfc2822", end) ||
	    FUNC1(format, "rfc", end))
		return DATE_RFC2822;
	if (FUNC1(format, "short", end))
		return DATE_SHORT;
	if (FUNC1(format, "default", end))
		return DATE_NORMAL;
	if (FUNC1(format, "human", end))
		return DATE_HUMAN;
	if (FUNC1(format, "raw", end))
		return DATE_RAW;
	if (FUNC1(format, "unix", end))
		return DATE_UNIX;
	if (FUNC1(format, "format", end))
		return DATE_STRFTIME;
	/*
	 * Please update $__git_log_date_formats in
	 * git-completion.bash when you add new formats.
	 */

	FUNC0("unknown date format %s", format);
}
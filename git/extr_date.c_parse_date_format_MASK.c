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
struct date_mode {int local; int /*<<< orphan*/  strftime_fmt; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_STRFTIME ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void FUNC7(const char *format, struct date_mode *mode)
{
	const char *p;

	/* "auto:foo" is "if tty/pager, then foo, otherwise normal" */
	if (FUNC4(format, "auto:", &p)) {
		if (FUNC1(1) || FUNC2())
			format = p;
		else
			format = "default";
	}

	/* historical alias */
	if (!FUNC5(format, "local"))
		format = "default-local";

	mode->type = FUNC3(format, &p);
	mode->local = 0;

	if (FUNC4(p, "-local", &p))
		mode->local = 1;

	if (mode->type == DATE_STRFTIME) {
		if (!FUNC4(p, ":", &p))
			FUNC0("date format missing colon separator: %s", format);
		mode->strftime_fmt = FUNC6(p);
	} else if (*p)
		FUNC0("unknown date format %s", format);
}
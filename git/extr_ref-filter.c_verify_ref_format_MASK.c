#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_format {int need_color_reset_at_eol; char* format; int /*<<< orphan*/  use_color; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (struct ref_format*,char const*,char const*,struct strbuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 char* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 TYPE_1__* used_atom ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct ref_format *format)
{
	const char *cp, *sp;

	format->need_color_reset_at_eol = 0;
	for (cp = format->format; *cp && (sp = FUNC3(cp)); ) {
		struct strbuf err = STRBUF_INIT;
		const char *color, *ep = FUNC7(sp, ')');
		int at;

		if (!ep)
			return FUNC2(FUNC0("malformed format string %s"), sp);
		/* sp points at "%(" and ep points at the closing ")" */
		at = FUNC4(format, sp + 2, ep, &err);
		if (at < 0)
			FUNC1("%s", err.buf);
		cp = ep + 1;

		if (FUNC5(used_atom[at].name, "color:", &color))
			format->need_color_reset_at_eol = !!FUNC8(color, "reset");
		FUNC6(&err);
	}
	if (format->need_color_reset_at_eol && !FUNC9(format->use_color))
		format->need_color_reset_at_eol = 0;
	return 0;
}
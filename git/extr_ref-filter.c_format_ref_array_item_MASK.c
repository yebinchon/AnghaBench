#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct ref_formatting_state {TYPE_1__* stack; int /*<<< orphan*/  quote_style; } ;
struct ref_format {char* format; scalar_t__ need_color_reset_at_eol; int /*<<< orphan*/  quote_style; } ;
struct ref_array_item {int dummy; } ;
struct atom_value {int /*<<< orphan*/  s; scalar_t__ (* handler ) (struct atom_value*,struct ref_formatting_state*,struct strbuf*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  output; scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_COLOR_RESET ; 
 struct ref_formatting_state REF_FORMATTING_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct atom_value*,struct ref_formatting_state*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,struct ref_formatting_state*) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (struct ref_array_item*,int,struct atom_value**,struct strbuf*) ; 
 int FUNC5 (struct ref_format const*,char const*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*,char) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (struct atom_value*,struct ref_formatting_state*,struct strbuf*) ; 

int FUNC13(struct ref_array_item *info,
			   const struct ref_format *format,
			   struct strbuf *final_buf,
			   struct strbuf *error_buf)
{
	const char *cp, *sp, *ep;
	struct ref_formatting_state state = REF_FORMATTING_STATE_INIT;

	state.quote_style = format->quote_style;
	FUNC7(&state.stack);

	for (cp = format->format; *cp && (sp = FUNC3(cp)); cp = ep + 1) {
		struct atom_value *atomv;
		int pos;

		ep = FUNC10(sp, ')');
		if (cp < sp)
			FUNC2(cp, sp, &state);
		pos = FUNC5(format, sp + 2, ep, error_buf);
		if (pos < 0 || FUNC4(info, pos, &atomv, error_buf) ||
		    atomv->handler(atomv, &state, error_buf)) {
			FUNC6(&state.stack);
			return -1;
		}
	}
	if (*cp) {
		sp = cp + FUNC11(cp);
		FUNC2(cp, sp, &state);
	}
	if (format->need_color_reset_at_eol) {
		struct atom_value resetv;
		resetv.s = GIT_COLOR_RESET;
		if (FUNC1(&resetv, &state, error_buf)) {
			FUNC6(&state.stack);
			return -1;
		}
	}
	if (state.stack->prev) {
		FUNC6(&state.stack);
		return FUNC9(error_buf, -1, FUNC0("format: %%(end) atom missing"));
	}
	FUNC8(final_buf, &state.stack->output);
	FUNC6(&state.stack);
	return 0;
}
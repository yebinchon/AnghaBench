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
typedef  char xdemitconf_t ;
struct userdiff_funcname {int /*<<< orphan*/  cflags; scalar_t__ pattern; } ;
struct userdiff_driver {struct userdiff_funcname funcname; } ;
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  char const* (* nth_line_fn_t ) (void*,long) ;

/* Variables and functions */
 int /*<<< orphan*/  REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct userdiff_driver* FUNC8 (struct index_state*,char const*) ; 
 char* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*,int) ; 

__attribute__((used)) static const char *FUNC12(
	const char *arg, nth_line_fn_t nth_line_cb,
	void *cb_data, long lines, long anchor, long *begin, long *end,
	const char *path, struct index_state *istate)
{
	char *pattern;
	const char *term;
	struct userdiff_driver *drv;
	xdemitconf_t *xecfg = NULL;
	const char *start;
	const char *p;
	int reg_error;
	regex_t regexp;

	if (*arg == '^') {
		anchor = 1;
		arg++;
	}

	FUNC0(*arg == ':');
	term = arg+1;
	while (*term && *term != ':') {
		if (*term == '\\' && *(term+1))
			term++;
		term++;
	}
	if (term == arg+1)
		return NULL;
	if (!begin) /* skip_range_arg case */
		return term;

	pattern = FUNC11(arg+1, term-(arg+1));

	anchor--; /* input is in human terms */
	start = nth_line_cb(cb_data, anchor);

	drv = FUNC8(istate, path);
	if (drv && drv->funcname.pattern) {
		const struct userdiff_funcname *pe = &drv->funcname;
		xecfg = FUNC9(1, sizeof(*xecfg));
		FUNC10(xecfg, pe->pattern, pe->cflags);
	}

	reg_error = FUNC5(&regexp, pattern, REG_NEWLINE);
	if (reg_error) {
		char errbuf[1024];
		FUNC6(reg_error, &regexp, errbuf, 1024);
		FUNC1("-L parameter '%s': %s", pattern, errbuf);
	}

	p = FUNC2(xecfg, (char*) start, &regexp);
	if (!p)
		FUNC1("-L parameter '%s' starting at line %ld: no match",
		    pattern, anchor + 1);
	*begin = 0;
	while (p > nth_line_cb(cb_data, *begin))
		(*begin)++;

	if (*begin >= lines)
		FUNC1("-L parameter '%s' matches at EOF", pattern);

	*end = *begin+1;
	while (*end < lines) {
		const char *bol = nth_line_cb(cb_data, *end);
		const char *eol = nth_line_cb(cb_data, *end+1);
		if (FUNC4(xecfg, bol, eol))
			break;
		(*end)++;
	}

	FUNC7(&regexp);
	FUNC3(xecfg);
	FUNC3(pattern);

	/* compensate for 1-based numbering */
	(*begin)++;

	return term;
}
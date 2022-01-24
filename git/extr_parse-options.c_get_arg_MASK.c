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
struct parse_opt_ctx_t {char* opt; int argc; char** argv; } ;
struct option {int flags; scalar_t__ defval; } ;
typedef  enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;

/* Variables and functions */
 int PARSE_OPT_LASTARG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct option const*,int) ; 

__attribute__((used)) static enum parse_opt_result FUNC3(struct parse_opt_ctx_t *p,
				     const struct option *opt,
				     int flags, const char **arg)
{
	if (p->opt) {
		*arg = p->opt;
		p->opt = NULL;
	} else if (p->argc == 1 && (opt->flags & PARSE_OPT_LASTARG_DEFAULT)) {
		*arg = (const char *)opt->defval;
	} else if (p->argc > 1) {
		p->argc--;
		*arg = *++p->argv;
	} else
		return FUNC1(FUNC0("%s requires a value"), FUNC2(opt, flags));
	return 0;
}
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
struct option {int type; int flags; int short_name; scalar_t__ argh; int /*<<< orphan*/  callback; int /*<<< orphan*/  ll_callback; scalar_t__ long_name; } ;
typedef  int /*<<< orphan*/  short_opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  OPTION_ALIAS 135 
#define  OPTION_BIT 134 
#define  OPTION_CALLBACK 133 
#define  OPTION_COUNTUP 132 
 int OPTION_END ; 
#define  OPTION_LOWLEVEL_CALLBACK 131 
#define  OPTION_NEGBIT 130 
#define  OPTION_NUMBER 129 
#define  OPTION_SET_INT 128 
 int PARSE_OPT_LASTARG_DEFAULT ; 
 int PARSE_OPT_NOARG ; 
 int PARSE_OPT_NODASH ; 
 int PARSE_OPT_NONEG ; 
 int PARSE_OPT_OPTARG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int FUNC3 (struct option const*,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(const struct option *opts)
{
	int err = 0;
	char short_opts[128];

	FUNC2(short_opts, '\0', sizeof(short_opts));
	for (; opts->type != OPTION_END; opts++) {
		if ((opts->flags & PARSE_OPT_LASTARG_DEFAULT) &&
		    (opts->flags & PARSE_OPT_OPTARG))
			err |= FUNC3(opts, "uses incompatible flags "
					"LASTARG_DEFAULT and OPTARG");
		if (opts->short_name) {
			if (0x7F <= opts->short_name)
				err |= FUNC3(opts, "invalid short name");
			else if (short_opts[opts->short_name]++)
				err |= FUNC3(opts, "short name already used");
		}
		if (opts->flags & PARSE_OPT_NODASH &&
		    ((opts->flags & PARSE_OPT_OPTARG) ||
		     !(opts->flags & PARSE_OPT_NOARG) ||
		     !(opts->flags & PARSE_OPT_NONEG) ||
		     opts->long_name))
			err |= FUNC3(opts, "uses feature "
					"not supported for dashless options");
		switch (opts->type) {
		case OPTION_COUNTUP:
		case OPTION_BIT:
		case OPTION_NEGBIT:
		case OPTION_SET_INT:
		case OPTION_NUMBER:
			if ((opts->flags & PARSE_OPT_OPTARG) ||
			    !(opts->flags & PARSE_OPT_NOARG))
				err |= FUNC3(opts, "should not accept an argument");
			break;
		case OPTION_CALLBACK:
			if (!opts->callback && !opts->ll_callback)
				FUNC0("OPTION_CALLBACK needs one callback");
			if (opts->callback && opts->ll_callback)
				FUNC0("OPTION_CALLBACK can't have two callbacks");
			break;
		case OPTION_LOWLEVEL_CALLBACK:
			if (!opts->ll_callback)
				FUNC0("OPTION_LOWLEVEL_CALLBACK needs a callback");
			if (opts->callback)
				FUNC0("OPTION_LOWLEVEL_CALLBACK needs no high level callback");
			break;
		case OPTION_ALIAS:
			FUNC0("OPT_ALIAS() should not remain at this point. "
			    "Are you using parse_options_step() directly?\n"
			    "That case is not supported yet.");
		default:
			; /* ok. (usually accepts an argument) */
		}
		if (opts->argh &&
		    FUNC4(opts->argh, " _") != FUNC5(opts->argh))
			err |= FUNC3(opts, "multi-word argh should use dash to separate words");
	}
	if (err)
		FUNC1(128);
}
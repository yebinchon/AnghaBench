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
struct parse_opt_ctx_t {char** argv; char** opt; struct option* alias_groups; } ;
struct option {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
#define  PARSE_OPT_COMPLETE 132 
#define  PARSE_OPT_DONE 131 
#define  PARSE_OPT_ERROR 130 
#define  PARSE_OPT_HELP 129 
#define  PARSE_OPT_NON_OPTION 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  disallow_abbreviated_options ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct option*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct parse_opt_ctx_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct parse_opt_ctx_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct parse_opt_ctx_t*,int,char const**,char const*,struct option const*,int) ; 
 int FUNC9 (struct parse_opt_ctx_t*,struct option const*,char const* const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char const**) ; 
 struct option* FUNC11 (struct parse_opt_ctx_t*,struct option const*) ; 
 int /*<<< orphan*/  FUNC12 (char const* const*,struct option const*) ; 

int FUNC13(int argc, const char **argv, const char *prefix,
		  const struct option *options, const char * const usagestr[],
		  int flags)
{
	struct parse_opt_ctx_t ctx;
	struct option *real_options;

	disallow_abbreviated_options =
		FUNC4("GIT_TEST_DISALLOW_ABBREVIATED_OPTIONS", 0);

	FUNC6(&ctx, 0, sizeof(ctx));
	real_options = FUNC11(&ctx, options);
	if (real_options)
		options = real_options;
	FUNC8(&ctx, argc, argv, prefix, options, flags);
	switch (FUNC9(&ctx, options, usagestr)) {
	case PARSE_OPT_HELP:
	case PARSE_OPT_ERROR:
		FUNC2(129);
	case PARSE_OPT_COMPLETE:
		FUNC2(0);
	case PARSE_OPT_NON_OPTION:
	case PARSE_OPT_DONE:
		break;
	default: /* PARSE_OPT_UNKNOWN */
		if (ctx.argv[0][1] == '-') {
			FUNC1(FUNC0("unknown option `%s'"), ctx.argv[0] + 2);
		} else if (FUNC5(*ctx.opt)) {
			FUNC1(FUNC0("unknown switch `%c'"), *ctx.opt);
		} else {
			FUNC1(FUNC0("unknown non-ascii option in string: `%s'"),
			      ctx.argv[0]);
		}
		FUNC12(usagestr, options);
	}

	FUNC10(argc, argv);
	FUNC3(real_options);
	FUNC3(ctx.alias_groups);
	return FUNC7(&ctx);
}
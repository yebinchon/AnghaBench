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
struct parse_opt_ctx_t {int argc; char const** argv; int total; char const** out; char const* prefix; int cpidx; int flags; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PARSE_OPT_KEEP_ARGV0 ; 
 int PARSE_OPT_KEEP_UNKNOWN ; 
 int PARSE_OPT_ONE_SHOT ; 
 int PARSE_OPT_STOP_AT_NON_OPTION ; 
 int /*<<< orphan*/  FUNC1 (struct option const*) ; 

__attribute__((used)) static void FUNC2(struct parse_opt_ctx_t *ctx,
				  int argc, const char **argv, const char *prefix,
				  const struct option *options, int flags)
{
	ctx->argc = argc;
	ctx->argv = argv;
	if (!(flags & PARSE_OPT_ONE_SHOT)) {
		ctx->argc--;
		ctx->argv++;
	}
	ctx->total = ctx->argc;
	ctx->out   = argv;
	ctx->prefix = prefix;
	ctx->cpidx = ((flags & PARSE_OPT_KEEP_ARGV0) != 0);
	ctx->flags = flags;
	if ((flags & PARSE_OPT_KEEP_UNKNOWN) &&
	    (flags & PARSE_OPT_STOP_AT_NON_OPTION) &&
	    !(flags & PARSE_OPT_ONE_SHOT))
		FUNC0("STOP_AT_NON_OPTION and KEEP_UNKNOWN don't go together");
	if ((flags & PARSE_OPT_ONE_SHOT) &&
	    (flags & PARSE_OPT_KEEP_ARGV0))
		FUNC0("Can't keep argv0 if you don't have it");
	FUNC1(options);
}
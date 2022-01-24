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
struct rev_info {int dummy; } ;
struct parse_opt_ctx_t {int argc; int /*<<< orphan*/ * argv; int /*<<< orphan*/  out; int /*<<< orphan*/  cpidx; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rev_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const* const*,struct option const*) ; 

void FUNC3(struct rev_info *revs, struct parse_opt_ctx_t *ctx,
			const struct option *options,
			const char * const usagestr[])
{
	int n = FUNC1(revs, ctx->argc, ctx->argv,
				    &ctx->cpidx, ctx->out, NULL);
	if (n <= 0) {
		FUNC0("unknown option `%s'", ctx->argv[0]);
		FUNC2(usagestr, options);
	}
	ctx->argv += n;
	ctx->argc -= n;
}
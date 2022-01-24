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
struct parse_opt_ctx_t {int dummy; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parse_opt_ctx_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct parse_opt_ctx_t*,int,char const**,char const*,struct option const*,int) ; 

void FUNC2(struct parse_opt_ctx_t *ctx,
			 int argc, const char **argv, const char *prefix,
			 const struct option *options, int flags)
{
	FUNC0(ctx, 0, sizeof(*ctx));
	FUNC1(ctx, argc, argv, prefix, options, flags);
}
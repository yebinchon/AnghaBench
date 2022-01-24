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
struct dh_ctx {int /*<<< orphan*/  xa; int /*<<< orphan*/  g; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dh_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dh_ctx *ctx)
{
	FUNC1(ctx->p);
	FUNC1(ctx->q);
	FUNC1(ctx->g);
	FUNC1(ctx->xa);
	FUNC0(ctx, 0, sizeof(*ctx));
}
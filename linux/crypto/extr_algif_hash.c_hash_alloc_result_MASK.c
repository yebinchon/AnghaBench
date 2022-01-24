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
struct sock {int dummy; } ;
struct hash_ctx {scalar_t__ result; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (struct sock*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct hash_ctx *ctx)
{
	unsigned ds;

	if (ctx->result)
		return 0;

	ds = FUNC0(FUNC1(&ctx->req));

	ctx->result = FUNC3(sk, ds, GFP_KERNEL);
	if (!ctx->result)
		return -ENOMEM;

	FUNC2(ctx->result, 0, ds);

	return 0;
}
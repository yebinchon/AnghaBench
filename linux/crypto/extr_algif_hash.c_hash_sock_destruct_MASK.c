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
struct hash_ctx {int /*<<< orphan*/  len; } ;
struct alg_sock {struct hash_ctx* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct alg_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct hash_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct hash_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct alg_sock *ask = FUNC1(sk);
	struct hash_ctx *ctx = ask->private;

	FUNC2(sk, ctx);
	FUNC3(sk, ctx, ctx->len);
	FUNC0(sk);
}
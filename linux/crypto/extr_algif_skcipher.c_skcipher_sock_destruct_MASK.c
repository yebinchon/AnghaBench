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
struct crypto_skcipher {int /*<<< orphan*/  len; int /*<<< orphan*/  iv; int /*<<< orphan*/  used; } ;
struct alg_sock {struct crypto_skcipher* private; struct sock* parent; } ;
struct af_alg_ctx {int /*<<< orphan*/  len; int /*<<< orphan*/  iv; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct alg_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct alg_sock *ask = FUNC2(sk);
	struct af_alg_ctx *ctx = ask->private;
	struct sock *psk = ask->parent;
	struct alg_sock *pask = FUNC2(psk);
	struct crypto_skcipher *tfm = pask->private;

	FUNC0(sk, ctx->used, NULL, 0);
	FUNC5(sk, ctx->iv, FUNC3(tfm));
	FUNC4(sk, ctx, ctx->len);
	FUNC1(sk);
}
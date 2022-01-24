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
struct crypto_aead {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; struct sock* parent; } ;
struct af_alg_ctx {int /*<<< orphan*/  len; int /*<<< orphan*/  iv; int /*<<< orphan*/  used; struct crypto_aead* aead; } ;
struct aead_tfm {int /*<<< orphan*/  len; int /*<<< orphan*/  iv; int /*<<< orphan*/  used; struct crypto_aead* aead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct alg_sock* FUNC2 (struct sock*) ; 
 unsigned int FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct af_alg_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct alg_sock *ask = FUNC2(sk);
	struct af_alg_ctx *ctx = ask->private;
	struct sock *psk = ask->parent;
	struct alg_sock *pask = FUNC2(psk);
	struct aead_tfm *aeadc = pask->private;
	struct crypto_aead *tfm = aeadc->aead;
	unsigned int ivlen = FUNC3(tfm);

	FUNC0(sk, ctx->used, NULL, 0);
	FUNC5(sk, ctx->iv, ivlen);
	FUNC4(sk, ctx, ctx->len);
	FUNC1(sk);
}
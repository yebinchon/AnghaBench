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
struct sock {int /*<<< orphan*/  sk_destruct; } ;
struct crypto_aead {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {unsigned int len; int /*<<< orphan*/  wait; scalar_t__ aead_assoclen; scalar_t__ enc; scalar_t__ merge; scalar_t__ more; int /*<<< orphan*/  rcvused; scalar_t__ used; int /*<<< orphan*/  tsgl_list; struct af_alg_ctx* iv; } ;
struct aead_tfm {struct crypto_aead* aead; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aead_sock_destruct ; 
 struct alg_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct af_alg_ctx*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct af_alg_ctx*,unsigned int) ; 
 void* FUNC7 (struct sock*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *private, struct sock *sk)
{
	struct af_alg_ctx *ctx;
	struct alg_sock *ask = FUNC1(sk);
	struct aead_tfm *tfm = private;
	struct crypto_aead *aead = tfm->aead;
	unsigned int len = sizeof(*ctx);
	unsigned int ivlen = FUNC3(aead);

	ctx = FUNC7(sk, len, GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;
	FUNC5(ctx, 0, len);

	ctx->iv = FUNC7(sk, ivlen, GFP_KERNEL);
	if (!ctx->iv) {
		FUNC6(sk, ctx, len);
		return -ENOMEM;
	}
	FUNC5(ctx->iv, 0, ivlen);

	FUNC0(&ctx->tsgl_list);
	ctx->len = len;
	ctx->used = 0;
	FUNC2(&ctx->rcvused, 0);
	ctx->more = 0;
	ctx->merge = 0;
	ctx->enc = 0;
	ctx->aead_assoclen = 0;
	FUNC4(&ctx->wait);

	ask->private = ctx;

	sk->sk_destruct = aead_sock_destruct;

	return 0;
}
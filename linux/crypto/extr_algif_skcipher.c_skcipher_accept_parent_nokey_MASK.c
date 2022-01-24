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
struct crypto_skcipher {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {unsigned int len; int /*<<< orphan*/  wait; scalar_t__ enc; scalar_t__ merge; scalar_t__ more; int /*<<< orphan*/  rcvused; scalar_t__ used; int /*<<< orphan*/  tsgl_list; void* iv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct alg_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  skcipher_sock_destruct ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct af_alg_ctx*,unsigned int) ; 
 void* FUNC7 (struct sock*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *private, struct sock *sk)
{
	struct af_alg_ctx *ctx;
	struct alg_sock *ask = FUNC1(sk);
	struct crypto_skcipher *tfm = private;
	unsigned int len = sizeof(*ctx);

	ctx = FUNC7(sk, len, GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->iv = FUNC7(sk, FUNC4(tfm),
			       GFP_KERNEL);
	if (!ctx->iv) {
		FUNC6(sk, ctx, len);
		return -ENOMEM;
	}

	FUNC5(ctx->iv, 0, FUNC4(tfm));

	FUNC0(&ctx->tsgl_list);
	ctx->len = len;
	ctx->used = 0;
	FUNC2(&ctx->rcvused, 0);
	ctx->more = 0;
	ctx->merge = 0;
	ctx->enc = 0;
	FUNC3(&ctx->wait);

	ask->private = ctx;

	sk->sk_destruct = skcipher_sock_destruct;

	return 0;
}
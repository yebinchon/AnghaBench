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
struct hash_ctx {unsigned int len; int /*<<< orphan*/  wait; int /*<<< orphan*/  req; scalar_t__ more; int /*<<< orphan*/ * result; } ;
struct crypto_ahash {int dummy; } ;
struct alg_sock {struct hash_ctx* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct crypto_ahash*) ; 
 struct alg_sock* FUNC2 (struct sock*) ; 
 int FUNC3 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int /*<<< orphan*/  hash_sock_destruct ; 
 struct hash_ctx* FUNC5 (struct sock*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *private, struct sock *sk)
{
	struct crypto_ahash *tfm = private;
	struct alg_sock *ask = FUNC2(sk);
	struct hash_ctx *ctx;
	unsigned int len = sizeof(*ctx) + FUNC3(tfm);

	ctx = FUNC5(sk, len, GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->result = NULL;
	ctx->len = len;
	ctx->more = 0;
	FUNC4(&ctx->wait);

	ask->private = ctx;

	FUNC1(&ctx->req, tfm);
	FUNC0(&ctx->req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				   crypto_req_done, &ctx->wait);

	sk->sk_destruct = hash_sock_destruct;

	return 0;
}
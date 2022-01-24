#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int sk_sndbuf; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iter; } ;
struct TYPE_3__ {int /*<<< orphan*/ * sg; } ;
struct hash_ctx {int more; int /*<<< orphan*/  wait; int /*<<< orphan*/  req; int /*<<< orphan*/ * result; TYPE_1__ sgl; } ;
struct alg_sock {struct hash_ctx* private; } ;

/* Variables and functions */
 int ALG_MAX_PAGES ; 
 int MSG_MORE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct alg_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sock*,struct hash_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct hash_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int FUNC12 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 

__attribute__((used)) static int FUNC14(struct socket *sock, struct msghdr *msg,
			size_t ignored)
{
	int limit = ALG_MAX_PAGES * PAGE_SIZE;
	struct sock *sk = sock->sk;
	struct alg_sock *ask = FUNC3(sk);
	struct hash_ctx *ctx = ask->private;
	long copied = 0;
	int err;

	if (limit > sk->sk_sndbuf)
		limit = sk->sk_sndbuf;

	FUNC11(sk);
	if (!ctx->more) {
		if ((msg->msg_flags & MSG_MORE))
			FUNC9(sk, ctx);

		err = FUNC7(FUNC5(&ctx->req), &ctx->wait);
		if (err)
			goto unlock;
	}

	ctx->more = 0;

	while (FUNC12(msg)) {
		int len = FUNC12(msg);

		if (len > limit)
			len = limit;

		len = FUNC1(&ctx->sgl, &msg->msg_iter, len);
		if (len < 0) {
			err = copied ? 0 : len;
			goto unlock;
		}

		FUNC2(&ctx->req, ctx->sgl.sg, NULL, len);

		err = FUNC7(FUNC6(&ctx->req),
				      &ctx->wait);
		FUNC0(&ctx->sgl);
		if (err)
			goto unlock;

		copied += len;
		FUNC10(&msg->msg_iter, len);
	}

	err = 0;

	ctx->more = msg->msg_flags & MSG_MORE;
	if (!ctx->more) {
		err = FUNC8(sk, ctx);
		if (err)
			goto unlock;

		FUNC2(&ctx->req, NULL, ctx->result, 0);
		err = FUNC7(FUNC4(&ctx->req),
				      &ctx->wait);
	}

unlock:
	FUNC13(sk);

	return err ?: copied;
}
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
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; } ;
struct hash_ctx {int result; int /*<<< orphan*/  wait; int /*<<< orphan*/  req; scalar_t__ more; } ;
struct alg_sock {struct hash_ctx* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct alg_sock* FUNC1 (struct sock*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sock*,struct hash_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct hash_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 (struct msghdr*,int,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct msghdr *msg, size_t len,
			int flags)
{
	struct sock *sk = sock->sk;
	struct alg_sock *ask = FUNC1(sk);
	struct hash_ctx *ctx = ask->private;
	unsigned ds = FUNC2(FUNC5(&ctx->req));
	bool result;
	int err;

	if (len > ds)
		len = ds;
	else if (len < ds)
		msg->msg_flags |= MSG_TRUNC;

	FUNC9(sk);
	result = ctx->result;
	err = FUNC7(sk, ctx);
	if (err)
		goto unlock;

	FUNC0(&ctx->req, NULL, ctx->result, 0);

	if (!result && !ctx->more) {
		err = FUNC6(FUNC4(&ctx->req),
				      &ctx->wait);
		if (err)
			goto unlock;
	}

	if (!result || ctx->more) {
		ctx->more = 0;
		err = FUNC6(FUNC3(&ctx->req),
				      &ctx->wait);
		if (err)
			goto unlock;
	}

	err = FUNC10(msg, ctx->result, len);

unlock:
	FUNC8(sk, ctx);
	FUNC11(sk);

	return err ?: len;
}
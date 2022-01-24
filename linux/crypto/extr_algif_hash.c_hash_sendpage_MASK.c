#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sg; } ;
struct hash_ctx {int more; int /*<<< orphan*/  wait; int /*<<< orphan*/  req; int /*<<< orphan*/  result; TYPE_1__ sgl; } ;
struct alg_sock {struct hash_ctx* private; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int MSG_MORE ; 
 int MSG_SENDPAGE_NOTLAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct alg_sock* FUNC1 (struct sock*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sock*,struct hash_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct hash_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct page*,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC13(struct socket *sock, struct page *page,
			     int offset, size_t size, int flags)
{
	struct sock *sk = sock->sk;
	struct alg_sock *ask = FUNC1(sk);
	struct hash_ctx *ctx = ask->private;
	int err;

	if (flags & MSG_SENDPAGE_NOTLAST)
		flags |= MSG_MORE;

	FUNC9(sk);
	FUNC11(ctx->sgl.sg, 1);
	FUNC12(ctx->sgl.sg, page, size, offset);

	if (!(flags & MSG_MORE)) {
		err = FUNC7(sk, ctx);
		if (err)
			goto unlock;
	} else if (!ctx->more)
		FUNC8(sk, ctx);

	FUNC0(&ctx->req, ctx->sgl.sg, ctx->result, size);

	if (!(flags & MSG_MORE)) {
		if (ctx->more)
			err = FUNC3(&ctx->req);
		else
			err = FUNC2(&ctx->req);
	} else {
		if (!ctx->more) {
			err = FUNC4(&ctx->req);
			err = FUNC6(err, &ctx->wait);
			if (err)
				goto unlock;
		}

		err = FUNC5(&ctx->req);
	}

	err = FUNC6(err, &ctx->wait);
	if (err)
		goto unlock;

	ctx->more = flags & MSG_MORE;

unlock:
	FUNC10(sk);

	return err ?: size;
}
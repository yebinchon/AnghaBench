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
struct ahash_request {int dummy; } ;
struct hash_ctx {int more; struct ahash_request req; } ;
struct alg_sock {struct hash_ctx* private; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int HASH_MAX_STATESIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct socket*,int) ; 
 struct alg_sock* FUNC1 (struct sock*) ; 
 int FUNC2 (struct ahash_request*,char*) ; 
 int FUNC3 (struct ahash_request*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct socket *newsock, int flags,
		       bool kern)
{
	struct sock *sk = sock->sk;
	struct alg_sock *ask = FUNC1(sk);
	struct hash_ctx *ctx = ask->private;
	struct ahash_request *req = &ctx->req;
	char state[HASH_MAX_STATESIZE];
	struct sock *sk2;
	struct alg_sock *ask2;
	struct hash_ctx *ctx2;
	bool more;
	int err;

	FUNC4(sk);
	more = ctx->more;
	err = more ? FUNC2(req, state) : 0;
	FUNC5(sk);

	if (err)
		return err;

	err = FUNC0(ask->parent, newsock, kern);
	if (err)
		return err;

	sk2 = newsock->sk;
	ask2 = FUNC1(sk2);
	ctx2 = ask2->private;
	ctx2->more = more;

	if (!more)
		return err;

	err = FUNC3(&ctx2->req, state);
	if (err) {
		FUNC6(sk2);
		FUNC7(sk2);
	}

	return err;
}
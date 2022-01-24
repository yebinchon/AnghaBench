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
struct socket_wq {int /*<<< orphan*/  wait; } ;
struct sock {int /*<<< orphan*/  sk_wq; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int EPOLLOUT ; 
 int EPOLLRDBAND ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 struct alg_sock* FUNC0 (struct sock*) ; 
 struct socket_wq* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct socket_wq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct alg_sock *ask = FUNC0(sk);
	struct af_alg_ctx *ctx = ask->private;
	struct socket_wq *wq;

	if (!ctx->used)
		return;

	FUNC2();
	wq = FUNC1(sk->sk_wq);
	if (FUNC5(wq))
		FUNC6(&wq->wait, EPOLLOUT |
							   EPOLLRDNORM |
							   EPOLLRDBAND);
	FUNC4(sk, SOCK_WAKE_SPACE, POLL_OUT);
	FUNC3();
}
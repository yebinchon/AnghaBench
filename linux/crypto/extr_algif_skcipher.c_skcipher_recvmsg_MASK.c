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
struct msghdr {int dummy; } ;

/* Variables and functions */
 int EIOCBQUEUED ; 
 int FUNC0 (struct socket*,struct msghdr*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct msghdr *msg,
			    size_t ignored, int flags)
{
	struct sock *sk = sock->sk;
	int ret = 0;

	FUNC2(sk);
	while (FUNC3(msg)) {
		int err = FUNC0(sock, msg, ignored, flags);

		/*
		 * This error covers -EIOCBQUEUED which implies that we can
		 * only handle one AIO request. If the caller wants to have
		 * multiple AIO requests in parallel, he must make multiple
		 * separate AIO calls.
		 *
		 * Also return the error if no data has been processed so far.
		 */
		if (err <= 0) {
			if (err == -EIOCBQUEUED || !ret)
				ret = err;
			goto out;
		}

		ret += err;
	}

out:
	FUNC1(sk);
	FUNC4(sk);
	return ret;
}
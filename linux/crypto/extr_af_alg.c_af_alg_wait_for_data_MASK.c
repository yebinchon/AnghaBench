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
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {int /*<<< orphan*/  more; scalar_t__ used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 unsigned int MSG_DONTWAIT ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct alg_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

int FUNC9(struct sock *sk, unsigned flags)
{
	FUNC0(wait, woken_wake_function);
	struct alg_sock *ask = FUNC2(sk);
	struct af_alg_ctx *ctx = ask->private;
	long timeout;
	int err = -ERESTARTSYS;

	if (flags & MSG_DONTWAIT)
		return -EAGAIN;

	FUNC6(SOCKWQ_ASYNC_WAITDATA, sk);

	FUNC1(FUNC7(sk), &wait);
	for (;;) {
		if (FUNC4(current))
			break;
		timeout = MAX_SCHEDULE_TIMEOUT;
		if (FUNC8(sk, &timeout, (ctx->used || !ctx->more),
				  &wait)) {
			err = 0;
			break;
		}
	}
	FUNC3(FUNC7(sk), &wait);

	FUNC5(SOCKWQ_ASYNC_WAITDATA, sk);

	return err;
}
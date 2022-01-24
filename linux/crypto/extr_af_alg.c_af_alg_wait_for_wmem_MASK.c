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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 unsigned int MSG_DONTWAIT ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*,long*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC8(struct sock *sk, unsigned int flags)
{
	FUNC0(wait, woken_wake_function);
	int err = -ERESTARTSYS;
	long timeout;

	if (flags & MSG_DONTWAIT)
		return -EAGAIN;

	FUNC5(SOCKWQ_ASYNC_NOSPACE, sk);

	FUNC1(FUNC6(sk), &wait);
	for (;;) {
		if (FUNC4(current))
			break;
		timeout = MAX_SCHEDULE_TIMEOUT;
		if (FUNC7(sk, &timeout, FUNC2(sk), &wait)) {
			err = 0;
			break;
		}
	}
	FUNC3(FUNC6(sk), &wait);

	return err;
}
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
struct TYPE_2__ {int /*<<< orphan*/  nl_pid; } ;
struct nl_sock {scalar_t__ s_fd; int s_flags; int /*<<< orphan*/  s_cb; TYPE_1__ s_local; } ;

/* Variables and functions */
 int NL_OWN_PORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nl_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct nl_sock *sk)
{
	if (!sk)
		return;

	if (sk->s_fd >= 0)
		FUNC0(sk->s_fd);

	if (!(sk->s_flags & NL_OWN_PORT))
		FUNC3(sk->s_local.nl_pid);

	FUNC2(sk->s_cb);
	FUNC1(sk);
}
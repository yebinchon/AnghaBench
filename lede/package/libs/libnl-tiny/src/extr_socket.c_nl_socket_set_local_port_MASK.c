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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ nl_pid; } ;
struct nl_sock {int s_flags; TYPE_1__ s_local; } ;

/* Variables and functions */
 int NL_OWN_PORT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct nl_sock *sk, uint32_t port)
{
	if (port == 0) {
		port = FUNC0(); 
		sk->s_flags &= ~NL_OWN_PORT;
	} else  {
		if (!(sk->s_flags & NL_OWN_PORT))
			FUNC1(sk->s_local.nl_pid);
		sk->s_flags |= NL_OWN_PORT;
	}

	sk->s_local.nl_pid = port;
}
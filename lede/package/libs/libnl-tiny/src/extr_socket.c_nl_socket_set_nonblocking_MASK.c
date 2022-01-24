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
struct nl_sock {int s_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int NLE_BAD_SOCK ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct nl_sock *sk)
{
	if (sk->s_fd == -1)
		return -NLE_BAD_SOCK;

	if (FUNC0(sk->s_fd, F_SETFL, O_NONBLOCK) < 0)
		return -FUNC1(errno);

	return 0;
}
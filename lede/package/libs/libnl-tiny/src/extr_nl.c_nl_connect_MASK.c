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
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ nl_family; } ;
struct nl_sock {int s_fd; int s_flags; int s_proto; TYPE_1__ s_local; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ AF_NETLINK ; 
 int NLE_AF_NOSUPPORT ; 
 int NLE_NOADDR ; 
 int NL_SOCK_BUFSIZE_SET ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,struct sockaddr*,int*) ; 
 int FUNC3 (struct nl_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct nl_sock *sk, int protocol)
{
	int err;
	socklen_t addrlen;

	sk->s_fd = FUNC5(AF_NETLINK, SOCK_RAW, protocol);
	if (sk->s_fd < 0) {
		err = -FUNC4(errno);
		goto errout;
	}

	if (!(sk->s_flags & NL_SOCK_BUFSIZE_SET)) {
		err = FUNC3(sk, 0, 0);
		if (err < 0)
			goto errout;
	}

	err = FUNC0(sk->s_fd, (struct sockaddr*) &sk->s_local,
		   sizeof(sk->s_local));
	if (err < 0) {
		err = -FUNC4(errno);
		goto errout;
	}

	addrlen = sizeof(sk->s_local);
	err = FUNC2(sk->s_fd, (struct sockaddr *) &sk->s_local,
			  &addrlen);
	if (err < 0) {
		err = -FUNC4(errno);
		goto errout;
	}

	if (addrlen != sizeof(sk->s_local)) {
		err = -NLE_NOADDR;
		goto errout;
	}

	if (sk->s_local.nl_family != AF_NETLINK) {
		err = -NLE_AF_NOSUPPORT;
		goto errout;
	}

	sk->s_proto = protocol;

	return 0;
errout:
	FUNC1(sk->s_fd);
	sk->s_fd = -1;

	return err;
}
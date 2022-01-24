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
typedef  int /*<<< orphan*/  txbuf ;
struct nl_sock {int s_fd; int /*<<< orphan*/  s_flags; } ;
typedef  int /*<<< orphan*/  rxbuf ;

/* Variables and functions */
 int NLE_BAD_SOCK ; 
 int /*<<< orphan*/  NL_SOCK_BUFSIZE_SET ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC2(struct nl_sock *sk, int rxbuf, int txbuf)
{
	int err;

	if (rxbuf <= 0)
		rxbuf = 32768;

	if (txbuf <= 0)
		txbuf = 32768;

	if (sk->s_fd == -1)
		return -NLE_BAD_SOCK;
	
	err = FUNC1(sk->s_fd, SOL_SOCKET, SO_SNDBUF,
			 &txbuf, sizeof(txbuf));
	if (err < 0)
		return -FUNC0(errno);

	err = FUNC1(sk->s_fd, SOL_SOCKET, SO_RCVBUF,
			 &rxbuf, sizeof(rxbuf));
	if (err < 0)
		return -FUNC0(errno);

	sk->s_flags |= NL_SOCK_BUFSIZE_SET;

	return 0;
}
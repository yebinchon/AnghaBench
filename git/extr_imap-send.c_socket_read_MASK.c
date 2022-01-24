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
struct imap_socket {int* fd; scalar_t__ ssl; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct imap_socket*,scalar_t__) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 

__attribute__((used)) static int FUNC4(struct imap_socket *sock, char *buf, int len)
{
	ssize_t n;
#ifndef NO_OPENSSL
	if (sock->ssl)
		n = FUNC0(sock->ssl, buf, len);
	else
#endif
		n = FUNC3(sock->fd[0], buf, len);
	if (n <= 0) {
		FUNC2("read", sock, n);
		FUNC1(sock->fd[0]);
		FUNC1(sock->fd[1]);
		sock->fd[0] = sock->fd[1] = -1;
	}
	return n;
}
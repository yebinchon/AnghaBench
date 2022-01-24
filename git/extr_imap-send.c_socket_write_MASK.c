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

/* Variables and functions */
 int FUNC0 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct imap_socket*,int) ; 
 int FUNC3 (int,char const*,int) ; 

__attribute__((used)) static int FUNC4(struct imap_socket *sock, const char *buf, int len)
{
	int n;
#ifndef NO_OPENSSL
	if (sock->ssl)
		n = FUNC0(sock->ssl, buf, len);
	else
#endif
		n = FUNC3(sock->fd[1], buf, len);
	if (n != len) {
		FUNC2("write", sock, n);
		FUNC1(sock->fd[0]);
		FUNC1(sock->fd[1]);
		sock->fd[0] = sock->fd[1] = -1;
	}
	return n;
}
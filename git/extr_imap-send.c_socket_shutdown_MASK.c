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
struct imap_socket {int /*<<< orphan*/ * fd; scalar_t__ ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct imap_socket *sock)
{
#ifndef NO_OPENSSL
	if (sock->ssl) {
		FUNC1(sock->ssl);
		FUNC0(sock->ssl);
	}
#endif
	FUNC2(sock->fd[0]);
	FUNC2(sock->fd[1]);
}
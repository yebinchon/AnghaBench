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
struct imap_socket {scalar_t__ ssl; } ;

/* Variables and functions */
#define  SSL_ERROR_NONE 129 
#define  SSL_ERROR_SYSCALL 128 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(const char *func, struct imap_socket *sock, int ret)
{
#ifndef NO_OPENSSL
	if (sock->ssl) {
		int sslerr = FUNC0(sock->ssl, ret);
		switch (sslerr) {
		case SSL_ERROR_NONE:
			break;
		case SSL_ERROR_SYSCALL:
			FUNC2("SSL_connect");
			break;
		default:
			FUNC3("SSL_connect");
			break;
		}
	} else
#endif
	{
		if (ret < 0)
			FUNC2(func);
		else
			FUNC1(stderr, "%s: unexpected EOF\n", func);
	}
}
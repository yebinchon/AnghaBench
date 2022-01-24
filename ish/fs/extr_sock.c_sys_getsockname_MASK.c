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
struct fd {int /*<<< orphan*/  real_fd; } ;
typedef  int /*<<< orphan*/  sockaddr ;
typedef  int int_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _EBADF ; 
 int _EFAULT ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int*) ; 
 struct fd* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 

int_t FUNC7(fd_t sock_fd, addr_t sockaddr_addr, addr_t sockaddr_len_addr) {
    FUNC0("getsockname(%d, 0x%x, 0x%x)", sock_fd, sockaddr_addr, sockaddr_len_addr);
    struct fd *sock = FUNC3(sock_fd);
    if (sock == NULL)
        return _EBADF;
    dword_t sockaddr_len;
    if (FUNC5(sockaddr_len_addr, sockaddr_len))
        return _EFAULT;

    // TODO if this is a unix socket, return the same string passed to bind

    char sockaddr[sockaddr_len];
    int res = FUNC2(sock->real_fd, (void *) sockaddr, &sockaddr_len);
    if (res < 0)
        return FUNC1();

    int err = FUNC4(sockaddr_addr, sockaddr, sizeof(sockaddr), &sockaddr_len);
    if (err < 0)
        return err;
    if (FUNC6(sockaddr_len_addr, sockaddr_len))
        return _EFAULT;
    return res;
}
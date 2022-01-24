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
typedef  int int_t ;
typedef  int /*<<< orphan*/  fd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int _EBADF ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct fd* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fd*) ; 

int_t FUNC5(fd_t sock_fd, int_t backlog) {
    FUNC0("listen(%d, %d)", sock_fd, backlog);
    struct fd *sock = FUNC3(sock_fd);
    if (sock == NULL)
        return _EBADF;
    int err = FUNC2(sock->real_fd, backlog);
    if (err < 0)
        return FUNC1();
    FUNC4(sock);
    return err;
}
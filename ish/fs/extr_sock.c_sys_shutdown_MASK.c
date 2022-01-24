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
typedef  int /*<<< orphan*/  int_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int /*<<< orphan*/  dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _EBADF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fd* FUNC3 (int /*<<< orphan*/ ) ; 

int_t FUNC4(fd_t sock_fd, dword_t how) {
    FUNC0("shutdown(%d, %d)", sock_fd, how);
    struct fd *sock = FUNC3(sock_fd);
    if (sock == NULL)
        return _EBADF;
    int err = FUNC2(sock->real_fd, how);
    if (err < 0)
        return FUNC1();
    return 0;
}
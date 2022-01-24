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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cloexec_mutex ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(int socket, struct sockaddr *addr, socklen_t *addrlen)
{
    int fd;
    FUNC2(&cloexec_mutex);

    if ((fd = FUNC0(socket, addr, addrlen)) == -1)
        goto Exit;
    if (FUNC4(fd) != 0) {
        FUNC1(fd);
        fd = -1;
        goto Exit;
    }

Exit:
    FUNC3(&cloexec_mutex);
    return fd;
}
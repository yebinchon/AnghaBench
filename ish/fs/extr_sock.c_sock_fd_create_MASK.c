#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int domain; int type; int protocol; int /*<<< orphan*/  unix_scm; int /*<<< orphan*/  unix_got_peer; } ;
struct TYPE_4__ {int mode; } ;
struct fd {int real_fd; TYPE_1__ socket; TYPE_2__ stat; } ;
typedef  int /*<<< orphan*/  fd_t ;

/* Variables and functions */
 int AF_LOCAL_ ; 
 int SOCKET_TYPE_MASK ; 
 int S_IFSOCK ; 
 int /*<<< orphan*/  _ENOMEM ; 
 struct fd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  socket_fdops ; 

__attribute__((used)) static fd_t FUNC4(int sock_fd, int domain, int type, int protocol) {
    struct fd *fd = FUNC0(&socket_fdops);
    if (fd == NULL)
        return _ENOMEM;
    fd->stat.mode = S_IFSOCK | 0666;
    fd->real_fd = sock_fd;
    fd->socket.domain = domain;
    fd->socket.type = type & SOCKET_TYPE_MASK;
    fd->socket.protocol = protocol;
    if (domain == AF_LOCAL_) {
        FUNC1(&fd->socket.unix_got_peer);
        FUNC3(&fd->socket.unix_scm);
    }
    return FUNC2(fd, type & ~SOCKET_TYPE_MASK);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pollfd {scalar_t__ fd; int events; int revents; } ;
struct TYPE_5__ {int /*<<< orphan*/  hint; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {TYPE_2__ in; TYPE_1__ out; } ;
struct io_pump {scalar_t__ fd; int type; scalar_t__ error; TYPE_3__ u; struct pollfd* pfd; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLNVAL ; 
 int POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct io_pump *slots, int nr, struct pollfd *pfd)
{
	int pollsize = 0;
	int i;

	for (i = 0; i < nr; i++) {
		struct io_pump *io = &slots[i];
		if (io->fd < 0)
			continue;
		pfd[pollsize].fd = io->fd;
		pfd[pollsize].events = io->type;
		io->pfd = &pfd[pollsize++];
	}

	if (!pollsize)
		return 0;

	if (FUNC2(pfd, pollsize, -1) < 0) {
		if (errno == EINTR)
			return 1;
		FUNC1("poll failed");
	}

	for (i = 0; i < nr; i++) {
		struct io_pump *io = &slots[i];

		if (io->fd < 0)
			continue;

		if (!(io->pfd->revents & (POLLOUT|POLLIN|POLLHUP|POLLERR|POLLNVAL)))
			continue;

		if (io->type == POLLOUT) {
			ssize_t len = FUNC4(io->fd,
					     io->u.out.buf, io->u.out.len);
			if (len < 0) {
				io->error = errno;
				FUNC0(io->fd);
				io->fd = -1;
			} else {
				io->u.out.buf += len;
				io->u.out.len -= len;
				if (!io->u.out.len) {
					FUNC0(io->fd);
					io->fd = -1;
				}
			}
		}

		if (io->type == POLLIN) {
			ssize_t len = FUNC3(io->u.in.buf,
						       io->fd, io->u.in.hint);
			if (len < 0)
				io->error = errno;
			if (len <= 0) {
				FUNC0(io->fd);
				io->fd = -1;
			}
		}
	}

	return 1;
}
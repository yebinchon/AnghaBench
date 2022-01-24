#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* ops; } ;
struct nbd_device {int /*<<< orphan*/  disk; } ;
struct TYPE_2__ {scalar_t__ shutdown; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ sock_no_shutdown ; 
 struct socket* FUNC2 (unsigned long,int*) ; 

__attribute__((used)) static struct socket *FUNC3(struct nbd_device *nbd, unsigned long fd,
				     int *err)
{
	struct socket *sock;

	*err = 0;
	sock = FUNC2(fd, err);
	if (!sock)
		return NULL;

	if (sock->ops->shutdown == sock_no_shutdown) {
		FUNC0(FUNC1(nbd->disk), "Unsupported socket: shutdown callout must be supported.\n");
		*err = -EINVAL;
		return NULL;
	}

	return sock;
}
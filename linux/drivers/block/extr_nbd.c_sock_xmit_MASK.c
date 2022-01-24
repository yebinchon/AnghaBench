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
struct socket {TYPE_2__* sk; } ;
struct nbd_device {int /*<<< orphan*/  disk; struct nbd_config* config; } ;
struct nbd_config {TYPE_1__** socks; } ;
struct iov_iter {int dummy; } ;
struct msghdr {int msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; struct iov_iter msg_iter; } ;
struct TYPE_4__ {int sk_allocation; } ;
struct TYPE_3__ {struct socket* sock; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
 int GFP_NOIO ; 
 int MSG_NOSIGNAL ; 
 int __GFP_MEMALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 () ; 
 scalar_t__ FUNC4 (struct msghdr*) ; 
 int FUNC5 (struct socket*,struct msghdr*,int) ; 
 int FUNC6 (struct socket*,struct msghdr*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nbd_device *nbd, int index, int send,
		     struct iov_iter *iter, int msg_flags, int *sent)
{
	struct nbd_config *config = nbd->config;
	struct socket *sock = config->socks[index]->sock;
	int result;
	struct msghdr msg;
	unsigned int noreclaim_flag;

	if (FUNC7(!sock)) {
		FUNC0(FUNC1(nbd->disk),
			"Attempted %s on closed socket in sock_xmit\n",
			(send ? "send" : "recv"));
		return -EINVAL;
	}

	msg.msg_iter = *iter;

	noreclaim_flag = FUNC3();
	do {
		sock->sk->sk_allocation = GFP_NOIO | __GFP_MEMALLOC;
		msg.msg_name = NULL;
		msg.msg_namelen = 0;
		msg.msg_control = NULL;
		msg.msg_controllen = 0;
		msg.msg_flags = msg_flags | MSG_NOSIGNAL;

		if (send)
			result = FUNC6(sock, &msg);
		else
			result = FUNC5(sock, &msg, msg.msg_flags);

		if (result <= 0) {
			if (result == 0)
				result = -EPIPE; /* short read */
			break;
		}
		if (sent)
			*sent += result;
	} while (FUNC4(&msg));

	FUNC2(noreclaim_flag);

	return result;
}
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
struct nl_sock {int /*<<< orphan*/  s_fd; struct nl_cb* s_cb; int /*<<< orphan*/  s_local; } ;
struct nl_msg {int dummy; } ;
struct nl_cb {scalar_t__* cb_set; } ;
struct msghdr {int msg_iovlen; struct iovec* msg_iov; } ;
struct iovec {void* iov_base; int /*<<< orphan*/  iov_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_len; } ;

/* Variables and functions */
 size_t NL_CB_MSG_OUT ; 
 scalar_t__ NL_OK ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (struct nl_cb*,size_t,struct nl_msg*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_msg*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 

int FUNC5(struct nl_sock *sk, struct nl_msg *msg, struct msghdr *hdr)
{
	struct nl_cb *cb;
	int ret;

	struct iovec iov = {
		.iov_base = (void *) FUNC2(msg),
		.iov_len = FUNC2(msg)->nlmsg_len,
	};

	hdr->msg_iov = &iov;
	hdr->msg_iovlen = 1;

	FUNC3(msg, &sk->s_local);

	cb = sk->s_cb;
	if (cb->cb_set[NL_CB_MSG_OUT])
		if (FUNC0(cb, NL_CB_MSG_OUT, msg) != NL_OK)
			return 0;

	ret = FUNC4(sk->s_fd, hdr, 0);
	if (ret < 0)
		return -FUNC1(errno);

	return ret;
}
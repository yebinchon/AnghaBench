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
struct socket {int dummy; } ;
struct nbd_sock {int fallback_index; int dead; scalar_t__ cookie; scalar_t__ sent; int /*<<< orphan*/ * pending; struct socket* sock; int /*<<< orphan*/  tx_lock; } ;
struct nbd_device {scalar_t__ task_setup; int /*<<< orphan*/  disk; struct nbd_config* config; } ;
struct nbd_config {int num_connections; int /*<<< orphan*/  live_connections; struct nbd_sock** socks; int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NBD_RT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nbd_sock** FUNC3 (struct nbd_sock**,int,int /*<<< orphan*/ ) ; 
 struct nbd_sock* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct socket* FUNC6 (struct nbd_device*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct nbd_device *nbd, unsigned long arg,
			  bool netlink)
{
	struct nbd_config *config = nbd->config;
	struct socket *sock;
	struct nbd_sock **socks;
	struct nbd_sock *nsock;
	int err;

	sock = FUNC6(nbd, arg, &err);
	if (!sock)
		return err;

	if (!netlink && !nbd->task_setup &&
	    !FUNC8(NBD_RT_BOUND, &config->runtime_flags))
		nbd->task_setup = current;

	if (!netlink &&
	    (nbd->task_setup != current ||
	     FUNC8(NBD_RT_BOUND, &config->runtime_flags))) {
		FUNC1(FUNC2(nbd->disk),
			"Device being setup by another task");
		FUNC7(sock);
		return -EBUSY;
	}

	socks = FUNC3(config->socks, (config->num_connections + 1) *
			 sizeof(struct nbd_sock *), GFP_KERNEL);
	if (!socks) {
		FUNC7(sock);
		return -ENOMEM;
	}
	nsock = FUNC4(sizeof(struct nbd_sock), GFP_KERNEL);
	if (!nsock) {
		FUNC7(sock);
		return -ENOMEM;
	}

	config->socks = socks;

	nsock->fallback_index = -1;
	nsock->dead = false;
	FUNC5(&nsock->tx_lock);
	nsock->sock = sock;
	nsock->pending = NULL;
	nsock->sent = 0;
	nsock->cookie = 0;
	socks[config->num_connections++] = nsock;
	FUNC0(&config->live_connections);

	return 0;
}
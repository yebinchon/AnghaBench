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
struct recv_thread_args {int index; int /*<<< orphan*/  work; struct nbd_device* nbd; } ;
struct nbd_sock {int dead; int fallback_index; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  cookie; struct socket* sock; } ;
struct TYPE_3__ {scalar_t__ timeout; } ;
struct nbd_device {int /*<<< orphan*/  recv_workq; int /*<<< orphan*/  config_refs; TYPE_1__ tag_set; struct nbd_config* config; } ;
struct nbd_config {int num_connections; int /*<<< orphan*/  conn_wait; int /*<<< orphan*/  live_connections; int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  recv_threads; struct nbd_sock** socks; } ;
struct TYPE_4__ {scalar_t__ sk_sndtimeo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBD_RT_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct recv_thread_args*) ; 
 struct recv_thread_args* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct socket* FUNC7 (struct nbd_device*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_work ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct nbd_device *nbd, unsigned long arg)
{
	struct nbd_config *config = nbd->config;
	struct socket *sock, *old;
	struct recv_thread_args *args;
	int i;
	int err;

	sock = FUNC7(nbd, arg, &err);
	if (!sock)
		return err;

	args = FUNC4(sizeof(*args), GFP_KERNEL);
	if (!args) {
		FUNC11(sock);
		return -ENOMEM;
	}

	for (i = 0; i < config->num_connections; i++) {
		struct nbd_sock *nsock = config->socks[i];

		if (!nsock->dead)
			continue;

		FUNC5(&nsock->tx_lock);
		if (!nsock->dead) {
			FUNC6(&nsock->tx_lock);
			continue;
		}
		FUNC10(sock->sk);
		if (nbd->tag_set.timeout)
			sock->sk->sk_sndtimeo = nbd->tag_set.timeout;
		FUNC1(&config->recv_threads);
		FUNC9(&nbd->config_refs);
		old = nsock->sock;
		nsock->fallback_index = -1;
		nsock->sock = sock;
		nsock->dead = false;
		FUNC0(&args->work, recv_work);
		args->index = i;
		args->nbd = nbd;
		nsock->cookie++;
		FUNC6(&nsock->tx_lock);
		FUNC11(old);

		FUNC2(NBD_RT_DISCONNECTED, &config->runtime_flags);

		/* We take the tx_mutex in an error path in the recv_work, so we
		 * need to queue_work outside of the tx_mutex.
		 */
		FUNC8(nbd->recv_workq, &args->work);

		FUNC1(&config->live_connections);
		FUNC12(&config->conn_wait);
		return 0;
	}
	FUNC11(sock);
	FUNC3(args);
	return -ENOSPC;
}
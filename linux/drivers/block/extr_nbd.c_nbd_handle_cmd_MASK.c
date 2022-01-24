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
struct request {int dummy; } ;
struct nbd_sock {int /*<<< orphan*/  tx_lock; struct request* pending; scalar_t__ dead; } ;
struct nbd_device {int /*<<< orphan*/  disk; struct nbd_config* config; int /*<<< orphan*/  config_refs; } ;
struct nbd_config {int num_connections; struct nbd_sock** socks; } ;
struct nbd_cmd {int /*<<< orphan*/  status; struct nbd_device* nbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 struct request* FUNC0 (struct nbd_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nbd_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nbd_device*,struct nbd_sock*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nbd_cmd*) ; 
 int FUNC10 (struct nbd_device*,struct nbd_cmd*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nbd_device*) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (struct nbd_device*) ; 

__attribute__((used)) static int FUNC15(struct nbd_cmd *cmd, int index)
{
	struct request *req = FUNC0(cmd);
	struct nbd_device *nbd = cmd->nbd;
	struct nbd_config *config;
	struct nbd_sock *nsock;
	int ret;

	if (!FUNC11(&nbd->config_refs)) {
		FUNC2(FUNC3(nbd->disk),
				    "Socks array is empty\n");
		FUNC1(req);
		return -EINVAL;
	}
	config = nbd->config;

	if (index >= config->num_connections) {
		FUNC2(FUNC3(nbd->disk),
				    "Attempted send on invalid socket\n");
		FUNC7(nbd);
		FUNC1(req);
		return -EINVAL;
	}
	cmd->status = BLK_STS_OK;
again:
	nsock = config->socks[index];
	FUNC5(&nsock->tx_lock);
	if (nsock->dead) {
		int old_index = index;
		index = FUNC4(nbd, index);
		FUNC6(&nsock->tx_lock);
		if (index < 0) {
			if (FUNC14(nbd)) {
				index = old_index;
				goto again;
			}
			/* All the sockets should already be down at this point,
			 * we just want to make sure that DISCONNECTED is set so
			 * any requests that come in that were queue'ed waiting
			 * for the reconnect timer don't trigger the timer again
			 * and instead just error out.
			 */
			FUNC12(nbd);
			FUNC7(nbd);
			FUNC1(req);
			return -EIO;
		}
		goto again;
	}

	/* Handle the case that we have a pending request that was partially
	 * transmitted that _has_ to be serviced first.  We need to call requeue
	 * here so that it gets put _after_ the request that is already on the
	 * dispatch list.
	 */
	FUNC1(req);
	if (FUNC13(nsock->pending && nsock->pending != req)) {
		FUNC9(cmd);
		ret = 0;
		goto out;
	}
	/*
	 * Some failures are related to the link going down, so anything that
	 * returns EAGAIN can be retried on a different socket.
	 */
	ret = FUNC10(nbd, cmd, index);
	if (ret == -EAGAIN) {
		FUNC2(FUNC3(nbd->disk),
				    "Request send failed, requeueing\n");
		FUNC8(nbd, nsock, 1);
		FUNC9(cmd);
		ret = 0;
	}
out:
	FUNC6(&nsock->tx_lock);
	FUNC7(nbd);
	return ret;
}
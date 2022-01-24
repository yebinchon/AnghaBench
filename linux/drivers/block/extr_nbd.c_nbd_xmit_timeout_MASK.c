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
struct request {int timeout; } ;
struct nbd_sock {scalar_t__ cookie; int /*<<< orphan*/  tx_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct nbd_device {TYPE_1__ tag_set; struct nbd_config* config; int /*<<< orphan*/  config_refs; } ;
struct nbd_config {int num_connections; int /*<<< orphan*/  runtime_flags; struct nbd_sock** socks; int /*<<< orphan*/  live_connections; } ;
struct nbd_cmd {int index; scalar_t__ cookie; int retries; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; struct nbd_device* nbd; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;

/* Variables and functions */
 int BLK_EH_DONE ; 
 int BLK_EH_RESET_TIMER ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_TIMEOUT ; 
 int HZ ; 
 int /*<<< orphan*/  NBD_RT_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct nbd_cmd* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct request*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct nbd_device*,struct nbd_sock*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nbd_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct request*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct nbd_device*) ; 

__attribute__((used)) static enum blk_eh_timer_return FUNC19(struct request *req,
						 bool reserved)
{
	struct nbd_cmd *cmd = FUNC2(req);
	struct nbd_device *nbd = cmd->nbd;
	struct nbd_config *config;

	if (!FUNC8(&cmd->lock))
		return BLK_EH_RESET_TIMER;

	if (!FUNC15(&nbd->config_refs)) {
		cmd->status = BLK_STS_TIMEOUT;
		FUNC9(&cmd->lock);
		goto done;
	}
	config = nbd->config;

	if (config->num_connections > 1) {
		FUNC5(FUNC13(nbd),
				    "Connection timed out, retrying (%d/%d alive)\n",
				    FUNC0(&config->live_connections),
				    config->num_connections);
		/*
		 * Hooray we have more connections, requeue this IO, the submit
		 * path will put it on a real connection.
		 */
		if (config->socks && config->num_connections > 1) {
			if (cmd->index < config->num_connections) {
				struct nbd_sock *nsock =
					config->socks[cmd->index];
				FUNC7(&nsock->tx_lock);
				/* We can have multiple outstanding requests, so
				 * we don't want to mark the nsock dead if we've
				 * already reconnected with a new socket, so
				 * only mark it dead if its the same socket we
				 * were sent out on.
				 */
				if (cmd->cookie == nsock->cookie)
					FUNC11(nbd, nsock, 1);
				FUNC9(&nsock->tx_lock);
			}
			FUNC9(&cmd->lock);
			FUNC12(cmd);
			FUNC10(nbd);
			return BLK_EH_DONE;
		}
	}

	if (!nbd->tag_set.timeout) {
		/*
		 * Userspace sets timeout=0 to disable socket disconnection,
		 * so just warn and reset the timer.
		 */
		cmd->retries++;
		FUNC6(FUNC13(nbd), "Possible stuck request %p: control (%s@%llu,%uB). Runtime %u seconds\n",
			req, FUNC14(FUNC16(req)),
			(unsigned long long)FUNC4(req) << 9,
			FUNC3(req), (req->timeout / HZ) * cmd->retries);

		FUNC9(&cmd->lock);
		FUNC10(nbd);
		return BLK_EH_RESET_TIMER;
	}

	FUNC5(FUNC13(nbd), "Connection timed out\n");
	FUNC17(NBD_RT_TIMEDOUT, &config->runtime_flags);
	cmd->status = BLK_STS_IOERR;
	FUNC9(&cmd->lock);
	FUNC18(nbd);
	FUNC10(nbd);
done:
	FUNC1(req);
	return BLK_EH_DONE;
}
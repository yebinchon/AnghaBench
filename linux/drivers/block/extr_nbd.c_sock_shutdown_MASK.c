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
struct nbd_sock {int /*<<< orphan*/  tx_lock; } ;
struct nbd_device {int /*<<< orphan*/  disk; struct nbd_config* config; } ;
struct nbd_config {int num_connections; struct nbd_sock** socks; int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_RT_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nbd_device*,struct nbd_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nbd_device *nbd)
{
	struct nbd_config *config = nbd->config;
	int i;

	if (config->num_connections == 0)
		return;
	if (FUNC5(NBD_RT_DISCONNECTED, &config->runtime_flags))
		return;

	for (i = 0; i < config->num_connections; i++) {
		struct nbd_sock *nsock = config->socks[i];
		FUNC2(&nsock->tx_lock);
		FUNC4(nbd, nsock, 0);
		FUNC3(&nsock->tx_lock);
	}
	FUNC0(FUNC1(nbd->disk), "shutting down sockets\n");
}
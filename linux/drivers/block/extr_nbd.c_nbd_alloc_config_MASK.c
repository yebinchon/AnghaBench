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
struct nbd_config {int /*<<< orphan*/  live_connections; int /*<<< orphan*/  blksize; int /*<<< orphan*/  conn_wait; int /*<<< orphan*/  recv_wq; int /*<<< orphan*/  recv_threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  NBD_DEF_BLKSIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nbd_config* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nbd_config *FUNC4(void)
{
	struct nbd_config *config;

	config = FUNC2(sizeof(struct nbd_config), GFP_NOFS);
	if (!config)
		return NULL;
	FUNC0(&config->recv_threads, 0);
	FUNC1(&config->recv_wq);
	FUNC1(&config->conn_wait);
	config->blksize = NBD_DEF_BLKSIZE;
	FUNC0(&config->live_connections, 0);
	FUNC3(THIS_MODULE);
	return config;
}
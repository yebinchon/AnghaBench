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
struct nbd_device {int /*<<< orphan*/  config_lock; int /*<<< orphan*/  recv_workq; struct nbd_config* config; } ;
struct nbd_config {int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  recv_threads; int /*<<< orphan*/  recv_wq; } ;
struct block_device {int bd_invalidated; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NBD_RT_DISCONNECT_REQUESTED ; 
 int /*<<< orphan*/  NBD_RT_TIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_part ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int FUNC5 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nbd_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct nbd_device *nbd, struct block_device *bdev)
{
	struct nbd_config *config = nbd->config;
	int ret;

	ret = FUNC5(nbd);
	if (ret)
		return ret;

	if (max_part)
		bdev->bd_invalidated = 1;
	FUNC3(&nbd->config_lock);
	ret = FUNC8(config->recv_wq,
					 FUNC0(&config->recv_threads) == 0);
	if (ret) {
		FUNC6(nbd);
		FUNC1(nbd->recv_workq);
	}
	FUNC2(&nbd->config_lock);
	FUNC4(bdev);
	/* user requested, ignore socket errors */
	if (FUNC7(NBD_RT_DISCONNECT_REQUESTED, &config->runtime_flags))
		ret = 0;
	if (FUNC7(NBD_RT_TIMEDOUT, &config->runtime_flags))
		ret = -ETIMEDOUT;
	return ret;
}
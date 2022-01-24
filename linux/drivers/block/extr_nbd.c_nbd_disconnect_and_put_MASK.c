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
struct nbd_device {TYPE_1__* config; int /*<<< orphan*/  recv_workq; int /*<<< orphan*/  config_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_RT_HAS_CONFIG_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nbd_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nbd_device *nbd)
{
	FUNC1(&nbd->config_lock);
	FUNC5(nbd);
	FUNC3(nbd);
	FUNC2(&nbd->config_lock);
	/*
	 * Make sure recv thread has finished, so it does not drop the last
	 * config ref and try to destroy the workqueue from inside the work
	 * queue.
	 */
	FUNC0(nbd->recv_workq);
	if (FUNC6(NBD_RT_HAS_CONFIG_REF,
			       &nbd->config->runtime_flags))
		FUNC4(nbd);
}
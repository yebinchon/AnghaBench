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
struct nbd_device {struct nbd_config* config; } ;
struct nbd_config {int /*<<< orphan*/  dead_conn_timeout; int /*<<< orphan*/  live_connections; int /*<<< orphan*/  conn_wait; int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_RT_DISCONNECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nbd_device *nbd)
{
	struct nbd_config *config = nbd->config;
	if (!config->dead_conn_timeout)
		return 0;
	if (FUNC1(NBD_RT_DISCONNECTED, &config->runtime_flags))
		return 0;
	return FUNC2(config->conn_wait,
				  FUNC0(&config->live_connections) > 0,
				  config->dead_conn_timeout) > 0;
}
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
struct nbd_device {int /*<<< orphan*/  flags; int /*<<< orphan*/  disk; struct nbd_config* config; } ;
struct nbd_config {int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_DISCONNECT_REQUESTED ; 
 int /*<<< orphan*/  NBD_RT_DISCONNECT_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nbd_device *nbd)
{
	struct nbd_config *config = nbd->config;

	FUNC0(FUNC1(nbd->disk), "NBD_DISCONNECT\n");
	FUNC3(NBD_RT_DISCONNECT_REQUESTED, &config->runtime_flags);
	FUNC3(NBD_DISCONNECT_REQUESTED, &nbd->flags);
	FUNC2(nbd);
	return 0;
}
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
struct nbd_cmd {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_CMD_REQUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 struct request* FUNC1 (struct nbd_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nbd_cmd *cmd)
{
	struct request *req = FUNC1(cmd);

	if (!FUNC2(NBD_CMD_REQUEUED, &cmd->flags))
		FUNC0(req, true);
}
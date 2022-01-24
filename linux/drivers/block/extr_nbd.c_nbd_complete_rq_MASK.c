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
struct nbd_cmd {scalar_t__ status; int /*<<< orphan*/  nbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,scalar_t__) ; 
 struct nbd_cmd* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct request*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct request *req)
{
	struct nbd_cmd *cmd = FUNC1(req);

	FUNC2(FUNC3(cmd->nbd), "request %p: %s\n", req,
		cmd->status ? "failed" : "done");

	FUNC0(req, cmd->status);
}
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
struct mtip_cmd {int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct request* FUNC1 (struct mtip_cmd*) ; 

__attribute__((used)) static void FUNC2(struct mtip_cmd *cmd, blk_status_t status)
{
	struct request *req = FUNC1(cmd);

	cmd->status = status;
	FUNC0(req);
}
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
struct scsi_request {scalar_t__ sense_len; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  __cmd; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct scsi_request *req)
{
	FUNC0(req->__cmd, 0, sizeof(req->__cmd));
	req->cmd = req->__cmd;
	req->cmd_len = BLK_MAX_CDB;
	req->sense_len = 0;
}
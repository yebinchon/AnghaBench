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

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct mtip_cmd* FUNC1 (struct request*) ; 

__attribute__((used)) static bool FUNC2(struct request *rq, void *data, bool reserv)
{
	struct mtip_cmd *cmd = FUNC1(rq);

	cmd->status = BLK_STS_IOERR;
	FUNC0(rq);
	return true;
}
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
struct pt_regs {int dummy; } ;
struct mc_request {int /*<<< orphan*/  originating_fd; TYPE_1__* cmd; int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {void (* handler ) (struct mc_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MCONSOLE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mc_request*) ; 
 void FUNC2 (struct mc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mc_request*,char*,int,int /*<<< orphan*/ ) ; 
 void FUNC4 (struct mc_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct pt_regs* FUNC6 (struct pt_regs*) ; 
 void FUNC7 (struct mc_request*) ; 

void FUNC8(struct mc_request *req)
{
	FUNC0(req->originating_fd, MCONSOLE_IRQ);
	FUNC5(req->originating_fd, 1);
	FUNC3(req, "stopped", 0, 0);
	for (;;) {
		if (!FUNC1(req->originating_fd, req))
			continue;
		if (req->cmd->handler == mconsole_go)
			break;
		if (req->cmd->handler == mconsole_stop) {
			FUNC3(req, "Already stopped", 1, 0);
			continue;
		}
		if (req->cmd->handler == mconsole_sysrq) {
			struct pt_regs *old_regs;
			old_regs = FUNC6((struct pt_regs *)&req->regs);
			FUNC4(req);
			FUNC6(old_regs);
			continue;
		}
		(*req->cmd->handler)(req);
	}
	FUNC5(req->originating_fd, 0);
	FUNC3(req, "", 0, 0);
}
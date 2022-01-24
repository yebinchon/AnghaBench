#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mc_request {int /*<<< orphan*/  regs; TYPE_1__* cmd; } ;
struct mconsole_entry {int /*<<< orphan*/  list; struct mc_request request; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  regs; } ;
struct TYPE_3__ {scalar_t__ context; int /*<<< orphan*/  (* handler ) (struct mc_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MCONSOLE_INTR ; 
 TYPE_2__* FUNC0 () ; 
 struct mconsole_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mc_requests ; 
 scalar_t__ FUNC4 (long,struct mc_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct mc_request*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mconsole_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mc_request*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	/* long to avoid size mismatch warnings from gcc */
	long fd;
	struct mconsole_entry *new;
	static struct mc_request req;	/* that's OK */

	fd = (long) dev_id;
	while (FUNC4(fd, &req)) {
		if (req.cmd->context == MCONSOLE_INTR)
			(*req.cmd->handler)(&req);
		else {
			new = FUNC1(sizeof(*new), GFP_NOWAIT);
			if (new == NULL)
				FUNC5(&req, "Out of memory", 1, 0);
			else {
				new->request = req;
				new->request.regs = FUNC0()->regs;
				FUNC2(&new->list, &mc_requests);
			}
		}
	}
	if (!FUNC3(&mc_requests))
		FUNC6(&mconsole_work);
	return IRQ_HANDLED;
}
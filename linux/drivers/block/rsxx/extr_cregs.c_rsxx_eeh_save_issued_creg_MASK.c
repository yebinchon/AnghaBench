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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ active; int /*<<< orphan*/  q_depth; int /*<<< orphan*/  queue; int /*<<< orphan*/  cmd_timer; struct creg_cmd* active_cmd; } ;
struct rsxx_cardinfo {TYPE_1__ creg_ctrl; } ;
struct creg_cmd {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rsxx_cardinfo *card)
{
	struct creg_cmd *cmd = NULL;

	cmd = card->creg_ctrl.active_cmd;
	card->creg_ctrl.active_cmd = NULL;

	if (cmd) {
		FUNC0(&card->creg_ctrl.cmd_timer);

		FUNC2(&card->creg_ctrl.lock);
		FUNC1(&cmd->list, &card->creg_ctrl.queue);
		card->creg_ctrl.q_depth++;
		card->creg_ctrl.active = 0;
		FUNC3(&card->creg_ctrl.lock);
	}
}
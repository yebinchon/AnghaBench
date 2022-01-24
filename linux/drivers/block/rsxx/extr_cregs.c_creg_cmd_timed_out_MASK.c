#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  creg_timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ active; TYPE_1__ creg_stats; struct creg_cmd* active_cmd; } ;
struct rsxx_cardinfo {TYPE_2__ creg_ctrl; } ;
struct creg_cmd {int /*<<< orphan*/  (* cb ) (struct rsxx_cardinfo*,struct creg_cmd*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  cmd_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 struct rsxx_cardinfo* card ; 
 int /*<<< orphan*/  creg_cmd_pool ; 
 TYPE_3__ creg_ctrl ; 
 int /*<<< orphan*/  FUNC1 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct rsxx_cardinfo* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct creg_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rsxx_cardinfo*,struct creg_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct rsxx_cardinfo *card = FUNC3(card, t, creg_ctrl.cmd_timer);
	struct creg_cmd *cmd;

	FUNC5(&card->creg_ctrl.lock);
	cmd = card->creg_ctrl.active_cmd;
	card->creg_ctrl.active_cmd = NULL;
	FUNC6(&card->creg_ctrl.lock);

	if (cmd == NULL) {
		card->creg_ctrl.creg_stats.creg_timeout++;
		FUNC2(FUNC0(card),
			"No active command associated with timeout!\n");
		return;
	}

	if (cmd->cb)
		cmd->cb(card, cmd, -ETIMEDOUT);

	FUNC4(creg_cmd_pool, cmd);


	FUNC5(&card->creg_ctrl.lock);
	card->creg_ctrl.active = 0;
	FUNC1(card);
	FUNC6(&card->creg_ctrl.lock);
}
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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  q_depth; int /*<<< orphan*/  queue; scalar_t__ reset; } ;
struct rsxx_cardinfo {TYPE_1__ creg_ctrl; int /*<<< orphan*/  halt; } ;
struct creg_cmd {unsigned int op; unsigned int addr; unsigned int cnt8; int stream; int /*<<< orphan*/  list; scalar_t__ status; void* cb_private; int /*<<< orphan*/  cb; void* buf; } ;
typedef  int /*<<< orphan*/  creg_cmd_cb ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int MAX_CREG_DATA8 ; 
 int /*<<< orphan*/  creg_cmd_pool ; 
 int /*<<< orphan*/  FUNC1 (struct rsxx_cardinfo*) ; 
 struct creg_cmd* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rsxx_cardinfo *card,
			  unsigned int op,
			  unsigned int addr,
			  unsigned int cnt8,
			  void *buf,
			  int stream,
			  creg_cmd_cb callback,
			  void *cb_private)
{
	struct creg_cmd *cmd;

	/* Don't queue stuff up if we're halted. */
	if (FUNC6(card->halt))
		return -EINVAL;

	if (card->creg_ctrl.reset)
		return -EAGAIN;

	if (cnt8 > MAX_CREG_DATA8)
		return -EINVAL;

	cmd = FUNC2(creg_cmd_pool, GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	FUNC0(&cmd->list);

	cmd->op		= op;
	cmd->addr	= addr;
	cmd->cnt8	= cnt8;
	cmd->buf	= buf;
	cmd->stream	= stream;
	cmd->cb		= callback;
	cmd->cb_private = cb_private;
	cmd->status	= 0;

	FUNC4(&card->creg_ctrl.lock);
	FUNC3(&cmd->list, &card->creg_ctrl.queue);
	card->creg_ctrl.q_depth++;
	FUNC1(card);
	FUNC5(&card->creg_ctrl.lock);

	return 0;
}
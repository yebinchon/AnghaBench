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
struct nullb_queue {int queue_depth; struct nullb_cmd* cmds; void* tag_map; } ;
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;
struct nullb_cmd {unsigned int tag; TYPE_1__ ll_list; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int BITS_PER_LONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nullb_cmd*) ; 

__attribute__((used)) static int FUNC4(struct nullb_queue *nq)
{
	struct nullb_cmd *cmd;
	int i, tag_size;

	nq->cmds = FUNC2(nq->queue_depth, sizeof(*cmd), GFP_KERNEL);
	if (!nq->cmds)
		return -ENOMEM;

	tag_size = FUNC0(nq->queue_depth, BITS_PER_LONG) / BITS_PER_LONG;
	nq->tag_map = FUNC2(tag_size, sizeof(unsigned long), GFP_KERNEL);
	if (!nq->tag_map) {
		FUNC3(nq->cmds);
		return -ENOMEM;
	}

	for (i = 0; i < nq->queue_depth; i++) {
		cmd = &nq->cmds[i];
		FUNC1(&cmd->list);
		cmd->ll_list.next = NULL;
		cmd->tag = -1U;
	}

	return 0;
}
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
struct rq_qos {TYPE_1__* ops; void* debugfs_dir; struct request_queue* q; int /*<<< orphan*/  id; } ;
struct request_queue {void* rqos_debugfs_dir; void* debugfs_dir; } ;
struct TYPE_2__ {int /*<<< orphan*/  debugfs_attrs; } ;

/* Variables and functions */
 void* FUNC0 (char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct rq_qos*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct rq_qos *rqos)
{
	struct request_queue *q = rqos->q;
	const char *dir_name = FUNC2(rqos->id);

	if (rqos->debugfs_dir || !rqos->ops->debugfs_attrs)
		return;

	if (!q->rqos_debugfs_dir)
		q->rqos_debugfs_dir = FUNC0("rqos",
							 q->debugfs_dir);

	rqos->debugfs_dir = FUNC0(dir_name,
					       rqos->q->rqos_debugfs_dir);

	FUNC1(rqos->debugfs_dir, rqos, rqos->ops->debugfs_attrs);
}
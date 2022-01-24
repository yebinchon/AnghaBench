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
struct work_struct {int dummy; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_struct*,int /*<<< orphan*/ ) ; 
 struct work_struct* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  rbd_queue_workfn ; 

__attribute__((used)) static int FUNC2(struct blk_mq_tag_set *set, struct request *rq,
		unsigned int hctx_idx, unsigned int numa_node)
{
	struct work_struct *work = FUNC1(rq);

	FUNC0(work, rbd_queue_workfn);
	return 0;
}
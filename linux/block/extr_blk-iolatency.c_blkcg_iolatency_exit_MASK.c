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
struct rq_qos {int /*<<< orphan*/  q; } ;
struct blk_iolatency {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 struct blk_iolatency* FUNC0 (struct rq_qos*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blkcg_policy_iolatency ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_iolatency*) ; 

__attribute__((used)) static void FUNC4(struct rq_qos *rqos)
{
	struct blk_iolatency *blkiolat = FUNC0(rqos);

	FUNC2(&blkiolat->timer);
	FUNC1(rqos->q, &blkcg_policy_iolatency);
	FUNC3(blkiolat);
}
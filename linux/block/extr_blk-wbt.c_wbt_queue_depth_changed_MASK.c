#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rq_qos {int /*<<< orphan*/  q; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue_depth; } ;
struct TYPE_5__ {TYPE_1__ rq_depth; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct rq_qos*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rq_qos *rqos)
{
	FUNC0(rqos)->rq_depth.queue_depth = FUNC2(rqos->q);
	FUNC1(FUNC0(rqos));
}
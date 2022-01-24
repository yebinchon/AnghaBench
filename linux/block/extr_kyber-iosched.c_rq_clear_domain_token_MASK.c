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
struct request {TYPE_1__* mq_ctx; int /*<<< orphan*/  cmd_flags; } ;
struct kyber_queue_data {int /*<<< orphan*/ * domain_tokens; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kyber_queue_data *kqd,
				  struct request *rq)
{
	unsigned int sched_domain;
	int nr;

	nr = FUNC1(rq);
	if (nr != -1) {
		sched_domain = FUNC0(rq->cmd_flags);
		FUNC2(&kqd->domain_tokens[sched_domain], nr,
				    rq->mq_ctx->cpu);
	}
}
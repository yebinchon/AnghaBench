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
struct show_busy_params {scalar_t__ hctx; int /*<<< orphan*/  m; } ;
struct request {scalar_t__ mq_hctx; int /*<<< orphan*/  queuelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct request *rq, void *data, bool reserved)
{
	const struct show_busy_params *params = data;

	if (rq->mq_hctx == params->hctx)
		FUNC0(params->m,
					 FUNC1(&rq->queuelist));

	return true;
}
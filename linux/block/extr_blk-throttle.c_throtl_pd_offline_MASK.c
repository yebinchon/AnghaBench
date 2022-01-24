#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct throtl_grp {TYPE_1__* td; scalar_t__** iops; scalar_t__** bps; } ;
struct blkg_policy_data {int dummy; } ;
struct TYPE_3__ {size_t limit_index; int /*<<< orphan*/ * limit_valid; } ;

/* Variables and functions */
 size_t LIMIT_LOW ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct throtl_grp* FUNC1 (struct blkg_policy_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct blkg_policy_data *pd)
{
	struct throtl_grp *tg = FUNC1(pd);

	tg->bps[READ][LIMIT_LOW] = 0;
	tg->bps[WRITE][LIMIT_LOW] = 0;
	tg->iops[READ][LIMIT_LOW] = 0;
	tg->iops[WRITE][LIMIT_LOW] = 0;

	FUNC0(tg->td);

	if (!tg->td->limit_valid[tg->td->limit_index])
		FUNC2(tg->td);
}
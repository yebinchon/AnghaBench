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
struct ioc_gq {int /*<<< orphan*/  delay_timer; int /*<<< orphan*/  waitq_timer; int /*<<< orphan*/  active_list; struct ioc* ioc; } ;
struct ioc {int /*<<< orphan*/  lock; } ;
struct blkg_policy_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc_gq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ioc_gq* FUNC4 (struct blkg_policy_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ioc_gq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct blkg_policy_data *pd)
{
	struct ioc_gq *iocg = FUNC4(pd);
	struct ioc *ioc = iocg->ioc;

	if (ioc) {
		FUNC6(&ioc->lock);
		if (!FUNC3(&iocg->active_list)) {
			FUNC5(iocg, 0, 0);
			FUNC2(&iocg->active_list);
		}
		FUNC7(&ioc->lock);

		FUNC0(&iocg->waitq_timer);
		FUNC0(&iocg->delay_timer);
	}
	FUNC1(iocg);
}
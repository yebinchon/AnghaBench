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
struct iolatency_grp {struct blk_iolatency* blkiolat; } ;
struct blkg_policy_data {int dummy; } ;
struct blkcg_gq {int dummy; } ;
struct blk_iolatency {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcg_gq*) ; 
 int FUNC3 (struct blkcg_gq*,int /*<<< orphan*/ ) ; 
 struct blkcg_gq* FUNC4 (struct iolatency_grp*) ; 
 struct iolatency_grp* FUNC5 (struct blkg_policy_data*) ; 

__attribute__((used)) static void FUNC6(struct blkg_policy_data *pd)
{
	struct iolatency_grp *iolat = FUNC5(pd);
	struct blkcg_gq *blkg = FUNC4(iolat);
	struct blk_iolatency *blkiolat = iolat->blkiolat;
	int ret;

	ret = FUNC3(blkg, 0);
	if (ret == 1)
		FUNC1(&blkiolat->enabled);
	if (ret == -1)
		FUNC0(&blkiolat->enabled);
	FUNC2(blkg);
}
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
struct throtl_grp {int dummy; } ;
struct blkcg_gq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  blkcg_policy_throtl ; 
 int /*<<< orphan*/  FUNC0 (struct blkcg_gq*,int /*<<< orphan*/ *) ; 
 struct throtl_grp* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct throtl_grp *FUNC2(struct blkcg_gq *blkg)
{
	return FUNC1(FUNC0(blkg, &blkcg_policy_throtl));
}
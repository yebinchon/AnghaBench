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
struct lgr_info {int level; int /*<<< orphan*/  stfle_fac_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lgr_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct lgr_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct lgr_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct lgr_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct lgr_info *lgr_info)
{
	int level;

	FUNC4(lgr_info, 0, sizeof(*lgr_info));
	FUNC5(lgr_info->stfle_fac_list, FUNC0(lgr_info->stfle_fac_list));
	level = FUNC6(NULL, 0, 0, 0);
	lgr_info->level = level;
	if (level >= 1)
		FUNC1(lgr_info);
	if (level >= 2)
		FUNC2(lgr_info);
	if (level >= 3)
		FUNC3(lgr_info);
}
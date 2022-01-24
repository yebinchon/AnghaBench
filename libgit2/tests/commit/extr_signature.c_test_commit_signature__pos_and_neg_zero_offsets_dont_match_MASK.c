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
typedef  int /*<<< orphan*/  git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 

void FUNC5(void)
{
	git_signature *with_neg_zero;
	git_signature *with_pos_zero;

	FUNC1(FUNC4(&with_neg_zero, "Test User <test@test.tt> 1461698487 -0000"));
	FUNC1(FUNC4(&with_pos_zero, "Test User <test@test.tt> 1461698487 +0000"));

	FUNC0(!FUNC2(with_neg_zero, with_pos_zero));

	FUNC3((git_signature *)with_neg_zero);
	FUNC3((git_signature *)with_pos_zero);
}
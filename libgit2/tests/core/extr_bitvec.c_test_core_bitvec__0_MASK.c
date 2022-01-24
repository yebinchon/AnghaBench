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
typedef  int /*<<< orphan*/  git_bitvec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(void)
{
	git_bitvec bv;

	FUNC1(FUNC4(&bv, 32));
	FUNC5(&bv, 16);
	FUNC0(&bv, 16);
	FUNC2(&bv);
	FUNC5(&bv, 32);
	FUNC0(&bv, 32);
	FUNC2(&bv);
	FUNC5(&bv, 64);
	FUNC0(&bv, 64);
	FUNC3(&bv);

	FUNC1(FUNC4(&bv, 128));
	FUNC5(&bv, 32);
	FUNC0(&bv, 32);
	FUNC5(&bv, 128);
	FUNC0(&bv, 128);
	FUNC3(&bv);

	FUNC1(FUNC4(&bv, 4000));
	FUNC5(&bv, 4000);
	FUNC0(&bv, 4000);
	FUNC3(&bv);
}
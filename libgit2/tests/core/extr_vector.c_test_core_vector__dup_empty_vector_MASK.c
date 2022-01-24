#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  _alloc_size; int /*<<< orphan*/  _cmp; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 TYPE_1__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 

void FUNC5(void)
{
	git_vector v = GIT_VECTOR_INIT;
	git_vector dup = GIT_VECTOR_INIT;
	int dummy;

	FUNC0(0, v.length);

	FUNC1(FUNC2(&dup, &v, v._cmp));
	FUNC0(0, dup._alloc_size);
	FUNC0(0, dup.length);

	FUNC1(FUNC4(&dup, &dummy));
	FUNC0(8, dup._alloc_size);
	FUNC0(1, dup.length);

	FUNC3(&dup);
}
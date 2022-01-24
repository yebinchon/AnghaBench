#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int content; } ;
typedef  TYPE_1__ my_struct ;
struct TYPE_8__ {int length; } ;
typedef  TYPE_2__ git_vector ;

/* Variables and functions */
 int _struct_count ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  compare_structs ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  merge_structs ; 

void FUNC7(void)
{
	git_vector x;
	int i;

	FUNC5(&x, 1, &compare_structs);

	for (i = 0; i < 10; i += 2)
		FUNC6(&x, FUNC0(i), &merge_structs);

	for (i = 9; i > 0; i -= 2)
		FUNC6(&x, FUNC0(i), &merge_structs);

	FUNC1(x.length == 10);
	FUNC1(_struct_count == 10);

	for (i = 0; i < 10; i += 2)
		FUNC6(&x, FUNC0(i), &merge_structs);

	for (i = 9; i > 0; i -= 2)
		FUNC6(&x, FUNC0(i), &merge_structs);

	FUNC1(x.length == 10);
	FUNC1(_struct_count == 10);

	for (i = 0; i < 10; ++i) {
		FUNC1(((my_struct *)FUNC4(&x, i))->content == i);
		FUNC2(FUNC4(&x, i));
		_struct_count--;
	}

	FUNC3(&x);
}
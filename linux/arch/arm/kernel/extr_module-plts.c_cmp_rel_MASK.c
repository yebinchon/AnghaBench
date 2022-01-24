#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  r_info; } ;
typedef  TYPE_1__ Elf32_Rel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const void *a, const void *b)
{
	const Elf32_Rel *x = a, *y = b;
	int i;

	/* sort by type and symbol index */
	i = FUNC2(FUNC1(x->r_info), FUNC1(y->r_info));
	if (i == 0)
		i = FUNC2(FUNC0(x->r_info), FUNC0(y->r_info));
	return i;
}
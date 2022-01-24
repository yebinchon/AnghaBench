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
struct mm_struct {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (unsigned long) ; 

unsigned int FUNC7(struct mm_struct *mm, unsigned long addr)
{
	unsigned char *psizes;
	int index, mask_index;

	FUNC2(FUNC5());

	if (FUNC6(addr)) {
		psizes = FUNC4(&mm->context);
		index = FUNC1(addr);
	} else {
		psizes = FUNC3(&mm->context);
		index = FUNC0(addr);
	}
	mask_index = index & 0x1;
	return (psizes[index >> 1] >> (mask_index * 4)) & 0xf;
}
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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t*) ; 

void FUNC3(char *out_string, u64 value)
{
	u32 count;
	u32 digits_needed;
	u32 remainder;

	FUNC0();

	digits_needed = FUNC1(value, 10);
	out_string[digits_needed] = 0;

	for (count = digits_needed; count > 0; count--) {
		(void)FUNC2(value, 10, &value, &remainder);
		out_string[count - 1] = (char)('0' + remainder);
	}
}
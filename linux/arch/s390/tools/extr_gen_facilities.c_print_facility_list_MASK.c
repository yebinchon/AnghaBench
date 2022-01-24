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
struct facility_def {int* bits; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 unsigned long long* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 unsigned long long* FUNC5 (unsigned long long*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct facility_def *def)
{
	unsigned int high, bit, dword, i;
	unsigned long long *array;

	array = FUNC0(1, 8);
	if (!array)
		FUNC1(EXIT_FAILURE);
	high = 0;
	for (i = 0; def->bits[i] != -1; i++) {
		bit = 63 - (def->bits[i] & 63);
		dword = def->bits[i] / 64;
		if (dword > high) {
			array = FUNC5(array, (dword + 1) * 8);
			if (!array)
				FUNC1(EXIT_FAILURE);
			FUNC3(array + high + 1, 0, (dword - high) * 8);
			high = dword;
		}
		array[dword] |= 1ULL << bit;
	}
	FUNC4("#define %s ", def->name);
	for (i = 0; i <= high; i++)
		FUNC4("_AC(0x%016llx,UL)%c", array[i], i < high ? ',' : '\n');
	FUNC2(array);
}
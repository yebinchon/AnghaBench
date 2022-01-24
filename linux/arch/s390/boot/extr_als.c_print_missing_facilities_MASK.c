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
struct TYPE_2__ {unsigned long* stfle_fac_list; } ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 int BITS_PER_LONG ; 
 TYPE_1__ S390_lowcore ; 
 unsigned long* als ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void FUNC5(void)
{
	static char als_str[80] = "Missing facilities: ";
	unsigned long val;
	char val_str[6];
	int i, j, first;

	first = 1;
	for (i = 0; i < FUNC0(als); i++) {
		val = ~S390_lowcore.stfle_fac_list[i] & als[i];
		for (j = 0; j < BITS_PER_LONG; j++) {
			if (!(val & (1UL << (BITS_PER_LONG - 1 - j))))
				continue;
			if (!first)
				FUNC2(als_str, ",");
			/*
			 * Make sure we stay within one line. Consider that
			 * each facility bit adds up to five characters and
			 * z/VM adds a four character prefix.
			 */
			if (FUNC3(als_str) > 70) {
				FUNC2(als_str, "\n");
				FUNC1(als_str);
				*als_str = '\0';
			}
			FUNC4(val_str, i * BITS_PER_LONG + j);
			FUNC2(als_str, val_str);
			first = 0;
		}
	}
	FUNC2(als_str, "\n");
	FUNC1(als_str);
}
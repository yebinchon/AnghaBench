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

/* Variables and functions */
 int FUNC0 (int) ; 

int FUNC1(char *string1, char *string2)
{
	int c1;
	int c2;

	do {
		c1 = FUNC0((int)*string1);
		c2 = FUNC0((int)*string2);

		string1++;
		string2++;
	}
	while ((c1 == c2) && (c1));

	return (c1 - c2);
}
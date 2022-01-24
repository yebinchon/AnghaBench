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
typedef  int /*<<< orphan*/  unative_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int v1 ; 
 int v2 ; 

void FUNC4(unsigned long bytes, unsigned long *v1_in,
		     unsigned long *v2_in)
{
	FUNC0(v1);
	FUNC0(v2);
	unsigned long lines = bytes / (sizeof(unative_t)) / 4;

	do {
		FUNC1(v1);
		FUNC1(v2);
		FUNC3(v1, v2);
		FUNC2(v1);

		v1 += 4;
		v2 += 4;
	} while (--lines > 0);
}
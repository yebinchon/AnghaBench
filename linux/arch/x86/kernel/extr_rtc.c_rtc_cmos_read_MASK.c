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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 

unsigned char FUNC5(unsigned char addr)
{
	unsigned char val;

	FUNC2(addr);
	FUNC4(addr, FUNC0(0));
	val = FUNC1(FUNC0(1));
	FUNC3(addr);

	return val;
}
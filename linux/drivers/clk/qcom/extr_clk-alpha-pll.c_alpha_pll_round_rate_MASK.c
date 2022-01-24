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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,int,int,int) ; 
 int FUNC2 (int,unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC3(unsigned long rate, unsigned long prate, u32 *l, u64 *a,
		     u32 alpha_width)
{
	u64 remainder;
	u64 quotient;

	quotient = rate;
	remainder = FUNC2(quotient, prate);
	*l = quotient;

	if (!remainder) {
		*a = 0;
		return rate;
	}

	/* Upper ALPHA_BITWIDTH bits of Alpha */
	quotient = remainder << FUNC0(alpha_width);

	remainder = FUNC2(quotient, prate);

	if (remainder)
		quotient++;

	*a = quotient;
	return FUNC1(prate, *l, *a, alpha_width);
}
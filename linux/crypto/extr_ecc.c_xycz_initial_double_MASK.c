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

/* Variables and functions */
 int ECC_MAX_DIGITS ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,unsigned int) ; 

__attribute__((used)) static void FUNC4(u64 *x1, u64 *y1, u64 *x2, u64 *y2,
				u64 *p_initial_z, u64 *curve_prime,
				unsigned int ndigits)
{
	u64 z[ECC_MAX_DIGITS];

	FUNC3(x2, x1, ndigits);
	FUNC3(y2, y1, ndigits);

	FUNC2(z, ndigits);
	z[0] = 1;

	if (p_initial_z)
		FUNC3(z, p_initial_z, ndigits);

	FUNC0(x1, y1, z, curve_prime, ndigits);

	FUNC1(x1, y1, z, curve_prime, ndigits);

	FUNC0(x2, y2, z, curve_prime, ndigits);
}
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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,scalar_t__*,scalar_t__*,unsigned int const) ; 
 int FUNC1 (scalar_t__ const*,scalar_t__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__ const*,unsigned int const) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,scalar_t__ const*,unsigned int const) ; 

__attribute__((used)) static void FUNC4(u64 *result, const u64 *product,
			      const u64 *curve_prime, u64 *tmp)
{
	const unsigned int ndigits = 3;
	int carry;

	FUNC2(result, product, ndigits);

	FUNC2(tmp, &product[3], ndigits);
	carry = FUNC0(result, result, tmp, ndigits);

	tmp[0] = 0;
	tmp[1] = product[3];
	tmp[2] = product[4];
	carry += FUNC0(result, result, tmp, ndigits);

	tmp[0] = tmp[1] = product[5];
	tmp[2] = 0;
	carry += FUNC0(result, result, tmp, ndigits);

	while (carry || FUNC1(curve_prime, result, ndigits) != 1)
		carry -= FUNC3(result, result, curve_prime, ndigits);
}
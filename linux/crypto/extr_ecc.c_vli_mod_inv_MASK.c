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
 scalar_t__ FUNC0 (int*) ; 
 int FUNC1 (int*,int*,int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int*,unsigned int) ; 
 int FUNC3 (int*,int*,unsigned int) ; 
 scalar_t__ FUNC4 (int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int*,unsigned int) ; 

void FUNC8(u64 *result, const u64 *input, const u64 *mod,
			unsigned int ndigits)
{
	u64 a[ECC_MAX_DIGITS], b[ECC_MAX_DIGITS];
	u64 u[ECC_MAX_DIGITS], v[ECC_MAX_DIGITS];
	u64 carry;
	int cmp_result;

	if (FUNC4(input, ndigits)) {
		FUNC2(result, ndigits);
		return;
	}

	FUNC6(a, input, ndigits);
	FUNC6(b, mod, ndigits);
	FUNC2(u, ndigits);
	u[0] = 1;
	FUNC2(v, ndigits);

	while ((cmp_result = FUNC3(a, b, ndigits)) != 0) {
		carry = 0;

		if (FUNC0(a)) {
			FUNC5(a, ndigits);

			if (!FUNC0(u))
				carry = FUNC1(u, u, mod, ndigits);

			FUNC5(u, ndigits);
			if (carry)
				u[ndigits - 1] |= 0x8000000000000000ull;
		} else if (FUNC0(b)) {
			FUNC5(b, ndigits);

			if (!FUNC0(v))
				carry = FUNC1(v, v, mod, ndigits);

			FUNC5(v, ndigits);
			if (carry)
				v[ndigits - 1] |= 0x8000000000000000ull;
		} else if (cmp_result > 0) {
			FUNC7(a, a, b, ndigits);
			FUNC5(a, ndigits);

			if (FUNC3(u, v, ndigits) < 0)
				FUNC1(u, u, mod, ndigits);

			FUNC7(u, u, v, ndigits);
			if (!FUNC0(u))
				carry = FUNC1(u, u, mod, ndigits);

			FUNC5(u, ndigits);
			if (carry)
				u[ndigits - 1] |= 0x8000000000000000ull;
		} else {
			FUNC7(b, b, a, ndigits);
			FUNC5(b, ndigits);

			if (FUNC3(v, u, ndigits) < 0)
				FUNC1(v, v, mod, ndigits);

			FUNC7(v, v, u, ndigits);
			if (!FUNC0(v))
				carry = FUNC1(v, v, mod, ndigits);

			FUNC5(v, ndigits);
			if (carry)
				v[ndigits - 1] |= 0x8000000000000000ull;
		}
	}

	FUNC6(result, u, ndigits);
}
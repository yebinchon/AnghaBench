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
 int /*<<< orphan*/  FUNC0 (int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int*,unsigned int) ; 
 scalar_t__ FUNC2 (int*,int*,unsigned int) ; 
 int FUNC3 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int,unsigned int) ; 

__attribute__((used)) static void FUNC9(u64 *result, const u64 *product,
			       const u64 *mod, unsigned int ndigits)
{
	u64 c2 = mod[0] * 2;
	u64 q[ECC_MAX_DIGITS];
	u64 r[ECC_MAX_DIGITS * 2];
	u64 m[ECC_MAX_DIGITS * 2]; /* expanded mod */
	int carry; /* last bit that doesn't fit into q */
	int i;

	FUNC5(m, mod, ndigits);
	FUNC1(m + ndigits, ndigits);

	FUNC5(r, product, ndigits);
	/* q and carry are top bits */
	FUNC5(q, product + ndigits, ndigits);
	FUNC1(r + ndigits, ndigits);
	carry = FUNC3(r, ndigits);
	if (carry)
		r[ndigits - 1] &= (1ull << 63) - 1;
	for (i = 1; carry || !FUNC4(q, ndigits); i++) {
		u64 qc[ECC_MAX_DIGITS * 2];

		FUNC8(qc, q, c2, ndigits);
		if (carry)
			FUNC7(qc, qc, mod[0], ndigits * 2);
		FUNC5(q, qc + ndigits, ndigits);
		FUNC1(qc + ndigits, ndigits);
		carry = FUNC3(qc, ndigits);
		if (carry)
			qc[ndigits - 1] &= (1ull << 63) - 1;
		if (i & 1)
			FUNC6(r, r, qc, ndigits * 2);
		else
			FUNC0(r, r, qc, ndigits * 2);
	}
	while (FUNC3(r, ndigits * 2))
		FUNC0(r, r, m, ndigits * 2);
	while (FUNC2(r, m, ndigits * 2) >= 0)
		FUNC6(r, r, m, ndigits * 2);

	FUNC5(result, r, ndigits);
}
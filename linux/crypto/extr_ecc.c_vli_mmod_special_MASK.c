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
typedef  int /*<<< orphan*/  const u64 ;

/* Variables and functions */
 int ECC_MAX_DIGITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,unsigned int) ; 

__attribute__((used)) static void FUNC7(u64 *result, const u64 *product,
			      const u64 *mod, unsigned int ndigits)
{
	u64 c = -mod[0];
	u64 t[ECC_MAX_DIGITS * 2];
	u64 r[ECC_MAX_DIGITS * 2];

	FUNC4(r, product, ndigits * 2);
	while (!FUNC3(r + ndigits, ndigits)) {
		FUNC6(t, r + ndigits, c, ndigits);
		FUNC1(r + ndigits, ndigits);
		FUNC0(r, r, t, ndigits * 2);
	}
	FUNC4(t, mod, ndigits);
	FUNC1(t + ndigits, ndigits);
	while (FUNC2(r, t, ndigits * 2) >= 0)
		FUNC5(r, r, t, ndigits * 2);
	FUNC4(result, r, ndigits);
}
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
 int FUNC0 (int*,int*,int*,unsigned int) ; 
 scalar_t__ FUNC1 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,unsigned int) ; 
 scalar_t__ FUNC8 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(u64 *x1, u64 *y1, u64 *z1,
				      u64 *curve_prime, unsigned int ndigits)
{
	/* t1 = x, t2 = y, t3 = z */
	u64 t4[ECC_MAX_DIGITS];
	u64 t5[ECC_MAX_DIGITS];

	if (FUNC1(z1, ndigits))
		return;

	/* t4 = y1^2 */
	FUNC4(t4, y1, curve_prime, ndigits);
	/* t5 = x1*y1^2 = A */
	FUNC3(t5, x1, t4, curve_prime, ndigits);
	/* t4 = y1^4 */
	FUNC4(t4, t4, curve_prime, ndigits);
	/* t2 = y1*z1 = z3 */
	FUNC3(y1, y1, z1, curve_prime, ndigits);
	/* t3 = z1^2 */
	FUNC4(z1, z1, curve_prime, ndigits);

	/* t1 = x1 + z1^2 */
	FUNC2(x1, x1, z1, curve_prime, ndigits);
	/* t3 = 2*z1^2 */
	FUNC2(z1, z1, z1, curve_prime, ndigits);
	/* t3 = x1 - z1^2 */
	FUNC5(z1, x1, z1, curve_prime, ndigits);
	/* t1 = x1^2 - z1^4 */
	FUNC3(x1, x1, z1, curve_prime, ndigits);

	/* t3 = 2*(x1^2 - z1^4) */
	FUNC2(z1, x1, x1, curve_prime, ndigits);
	/* t1 = 3*(x1^2 - z1^4) */
	FUNC2(x1, x1, z1, curve_prime, ndigits);
	if (FUNC8(x1, 0)) {
		u64 carry = FUNC0(x1, x1, curve_prime, ndigits);

		FUNC6(x1, ndigits);
		x1[ndigits - 1] |= carry << 63;
	} else {
		FUNC6(x1, ndigits);
	}
	/* t1 = 3/2*(x1^2 - z1^4) = B */

	/* t3 = B^2 */
	FUNC4(z1, x1, curve_prime, ndigits);
	/* t3 = B^2 - A */
	FUNC5(z1, z1, t5, curve_prime, ndigits);
	/* t3 = B^2 - 2A = x3 */
	FUNC5(z1, z1, t5, curve_prime, ndigits);
	/* t5 = A - x3 */
	FUNC5(t5, t5, z1, curve_prime, ndigits);
	/* t1 = B * (A - x3) */
	FUNC3(x1, x1, t5, curve_prime, ndigits);
	/* t4 = B * (A - x3) - y1^4 = y3 */
	FUNC5(t4, x1, t4, curve_prime, ndigits);

	FUNC7(x1, z1, ndigits);
	FUNC7(z1, y1, ndigits);
	FUNC7(y1, t4, ndigits);
}
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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int ECC_MAX_DIGITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC4(u64 *x1, u64 *y1, u64 *x2, u64 *y2, u64 *curve_prime,
		     unsigned int ndigits)
{
	/* t1 = X1, t2 = Y1, t3 = X2, t4 = Y2 */
	u64 t5[ECC_MAX_DIGITS];

	/* t5 = x2 - x1 */
	FUNC2(t5, x2, x1, curve_prime, ndigits);
	/* t5 = (x2 - x1)^2 = A */
	FUNC1(t5, t5, curve_prime, ndigits);
	/* t1 = x1*A = B */
	FUNC0(x1, x1, t5, curve_prime, ndigits);
	/* t3 = x2*A = C */
	FUNC0(x2, x2, t5, curve_prime, ndigits);
	/* t4 = y2 - y1 */
	FUNC2(y2, y2, y1, curve_prime, ndigits);
	/* t5 = (y2 - y1)^2 = D */
	FUNC1(t5, y2, curve_prime, ndigits);

	/* t5 = D - B */
	FUNC2(t5, t5, x1, curve_prime, ndigits);
	/* t5 = D - B - C = x3 */
	FUNC2(t5, t5, x2, curve_prime, ndigits);
	/* t3 = C - B */
	FUNC2(x2, x2, x1, curve_prime, ndigits);
	/* t2 = y1*(C - B) */
	FUNC0(y1, y1, x2, curve_prime, ndigits);
	/* t3 = B - x3 */
	FUNC2(x2, x1, t5, curve_prime, ndigits);
	/* t4 = (y2 - y1)*(B - x3) */
	FUNC0(y2, y2, x2, curve_prime, ndigits);
	/* t4 = y3 */
	FUNC2(y2, y2, y1, curve_prime, ndigits);

	FUNC3(x2, t5, ndigits);
}
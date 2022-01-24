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

__attribute__((used)) static void FUNC2(u64 *x1, u64 *y1, u64 *z, u64 *curve_prime,
		    unsigned int ndigits)
{
	u64 t1[ECC_MAX_DIGITS];

	FUNC1(t1, z, curve_prime, ndigits);    /* z^2 */
	FUNC0(x1, x1, t1, curve_prime, ndigits); /* x1 * z^2 */
	FUNC0(t1, t1, z, curve_prime, ndigits);  /* z^3 */
	FUNC0(y1, y1, t1, curve_prime, ndigits); /* y1 * z^3 */
}
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
typedef  int /*<<< orphan*/  const limb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(limb *x2, limb *z2,  /* output 2Q */
                   limb *x3, limb *z3,  /* output Q + Q' */
                   limb *x, limb *z,    /* input Q */
                   limb *xprime, limb *zprime,  /* input Q' */
                   const limb *qmqp /* input Q - Q' */) {
  limb origx[10], origxprime[10], zzz[19], xx[19], zz[19], xxprime[19],
        zzprime[19], zzzprime[19], xxxprime[19];

  FUNC7(origx, x, 10 * sizeof(limb));
  FUNC6(x, z);
  /* |x[i]| < 2^27 */
  FUNC0(z, origx);  /* does x - z */
  /* |z[i]| < 2^27 */

  FUNC7(origxprime, xprime, sizeof(limb) * 10);
  FUNC6(xprime, zprime);
  /* |xprime[i]| < 2^27 */
  FUNC0(zprime, origxprime);
  /* |zprime[i]| < 2^27 */
  FUNC1(xxprime, xprime, z);
  /* |xxprime[i]| < 14*2^54: the largest product of two limbs will be <
   * 2^(27+27) and fproduct adds together, at most, 14 of those products.
   * (Approximating that to 2^58 doesn't work out.) */
  FUNC1(zzprime, x, zprime);
  /* |zzprime[i]| < 14*2^54 */
  FUNC3(xxprime);
  FUNC2(xxprime);
  /* |xxprime[i]| < 2^26 */
  FUNC3(zzprime);
  FUNC2(zzprime);
  /* |zzprime[i]| < 2^26 */
  FUNC7(origxprime, xxprime, sizeof(limb) * 10);
  FUNC6(xxprime, zzprime);
  /* |xxprime[i]| < 2^27 */
  FUNC0(zzprime, origxprime);
  /* |zzprime[i]| < 2^27 */
  FUNC5(xxxprime, xxprime);
  /* |xxxprime[i]| < 2^26 */
  FUNC5(zzzprime, zzprime);
  /* |zzzprime[i]| < 2^26 */
  FUNC1(zzprime, zzzprime, qmqp);
  /* |zzprime[i]| < 14*2^52 */
  FUNC3(zzprime);
  FUNC2(zzprime);
  /* |zzprime[i]| < 2^26 */
  FUNC7(x3, xxxprime, sizeof(limb) * 10);
  FUNC7(z3, zzprime, sizeof(limb) * 10);

  FUNC5(xx, x);
  /* |xx[i]| < 2^26 */
  FUNC5(zz, z);
  /* |zz[i]| < 2^26 */
  FUNC1(x2, xx, zz);
  /* |x2[i]| < 14*2^52 */
  FUNC3(x2);
  FUNC2(x2);
  /* |x2[i]| < 2^26 */
  FUNC0(zz, xx);  // does zz = xx - zz
  /* |zz[i]| < 2^27 */
  FUNC8(zzz + 10, 0, sizeof(limb) * 9);
  FUNC4(zzz, zz, 121665);
  /* |zzz[i]| < 2^(27+17) */
  /* No need to call freduce_degree here:
     fscalar_product doesn't increase the degree of its input. */
  FUNC2(zzz);
  /* |zzz[i]| < 2^26 */
  FUNC6(zzz, xx);
  /* |zzz[i]| < 2^27 */
  FUNC1(z2, zz, zzz);
  /* |z2[i]| < 14*2^(26+27) */
  FUNC3(z2);
  FUNC2(z2);
  /* |z2|i| < 2^26 */
}
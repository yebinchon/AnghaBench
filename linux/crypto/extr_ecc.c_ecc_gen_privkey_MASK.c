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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct ecc_curve {int /*<<< orphan*/  n; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int ECC_DIGITS_TO_BYTES_SHIFT ; 
 int ECC_MAX_DIGITS ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct ecc_curve const*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  crypto_default_rng ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 struct ecc_curve* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC8(unsigned int curve_id, unsigned int ndigits, u64 *privkey)
{
	const struct ecc_curve *curve = FUNC5(curve_id);
	u64 priv[ECC_MAX_DIGITS];
	unsigned int nbytes = ndigits << ECC_DIGITS_TO_BYTES_SHIFT;
	unsigned int nbits = FUNC7(curve->n, ndigits);
	int err;

	/* Check that N is included in Table 1 of FIPS 186-4, section 6.1.1 */
	if (nbits < 160 || ndigits > FUNC0(priv))
		return -EINVAL;

	/*
	 * FIPS 186-4 recommends that the private key should be obtained from a
	 * RBG with a security strength equal to or greater than the security
	 * strength associated with N.
	 *
	 * The maximum security strength identified by NIST SP800-57pt1r4 for
	 * ECC is 256 (N >= 512).
	 *
	 * This condition is met by the default RNG because it selects a favored
	 * DRBG with a security strength of 256.
	 */
	if (FUNC2())
		return -EFAULT;

	err = FUNC4(crypto_default_rng, (u8 *)priv, nbytes);
	FUNC3();
	if (err)
		return err;

	/* Make sure the private key is in the valid range. */
	if (FUNC1(curve, priv, ndigits))
		return -EINVAL;

	FUNC6(priv, privkey, ndigits);

	return 0;
}
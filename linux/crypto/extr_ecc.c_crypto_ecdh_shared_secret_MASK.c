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
struct ecc_point {int /*<<< orphan*/  const* x; int /*<<< orphan*/  const* y; } ;
struct ecc_curve {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 unsigned int ECC_DIGITS_TO_BYTES_SHIFT ; 
 int ECC_MAX_DIGITS ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ecc_point* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecc_point*) ; 
 struct ecc_curve* FUNC3 (unsigned int) ; 
 int FUNC4 (struct ecc_curve const*,struct ecc_point*) ; 
 scalar_t__ FUNC5 (struct ecc_point*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecc_point*,struct ecc_point*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct ecc_curve const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,unsigned int) ; 

int FUNC9(unsigned int curve_id, unsigned int ndigits,
			      const u64 *private_key, const u64 *public_key,
			      u64 *secret)
{
	int ret = 0;
	struct ecc_point *product, *pk;
	u64 priv[ECC_MAX_DIGITS];
	u64 rand_z[ECC_MAX_DIGITS];
	unsigned int nbytes;
	const struct ecc_curve *curve = FUNC3(curve_id);

	if (!private_key || !public_key || !curve ||
	    ndigits > FUNC0(priv) || ndigits > FUNC0(rand_z)) {
		ret = -EINVAL;
		goto out;
	}

	nbytes = ndigits << ECC_DIGITS_TO_BYTES_SHIFT;

	FUNC8(rand_z, nbytes);

	pk = FUNC1(ndigits);
	if (!pk) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC7(public_key, pk->x, ndigits);
	FUNC7(&public_key[ndigits], pk->y, ndigits);
	ret = FUNC4(curve, pk);
	if (ret)
		goto err_alloc_product;

	FUNC7(private_key, priv, ndigits);

	product = FUNC1(ndigits);
	if (!product) {
		ret = -ENOMEM;
		goto err_alloc_product;
	}

	FUNC6(product, pk, priv, rand_z, curve, ndigits);

	FUNC7(product->x, secret, ndigits);

	if (FUNC5(product))
		ret = -EFAULT;

	FUNC2(product);
err_alloc_product:
	FUNC2(pk);
out:
	return ret;
}
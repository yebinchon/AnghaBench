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
struct ecc_point {int /*<<< orphan*/  const* y; int /*<<< orphan*/  const* x; } ;
struct ecc_curve {int /*<<< orphan*/  g; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EAGAIN ; 
 int ECC_MAX_DIGITS ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ecc_point* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecc_point*) ; 
 struct ecc_curve* FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (struct ecc_point*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecc_point*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ecc_curve const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC7(unsigned int curve_id, unsigned int ndigits,
		     const u64 *private_key, u64 *public_key)
{
	int ret = 0;
	struct ecc_point *pk;
	u64 priv[ECC_MAX_DIGITS];
	const struct ecc_curve *curve = FUNC3(curve_id);

	if (!private_key || !curve || ndigits > FUNC0(priv)) {
		ret = -EINVAL;
		goto out;
	}

	FUNC6(private_key, priv, ndigits);

	pk = FUNC1(ndigits);
	if (!pk) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC5(pk, &curve->g, priv, NULL, curve, ndigits);
	if (FUNC4(pk)) {
		ret = -EAGAIN;
		goto err_free_point;
	}

	FUNC6(pk->x, public_key, ndigits);
	FUNC6(pk->y, &public_key[ndigits], ndigits);

err_free_point:
	FUNC2(pk);
out:
	return ret;
}
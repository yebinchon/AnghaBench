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
struct ecc_curve {int dummy; } ;

/* Variables and functions */
 unsigned int ECC_DIGITS_TO_BYTES_SHIFT ; 
 int EINVAL ; 
 int FUNC0 (struct ecc_curve const*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct ecc_curve* FUNC1 (unsigned int) ; 

int FUNC2(unsigned int curve_id, unsigned int ndigits,
		     const u64 *private_key, unsigned int private_key_len)
{
	int nbytes;
	const struct ecc_curve *curve = FUNC1(curve_id);

	nbytes = ndigits << ECC_DIGITS_TO_BYTES_SHIFT;

	if (private_key_len != nbytes)
		return -EINVAL;

	return FUNC0(curve, private_key, ndigits);
}
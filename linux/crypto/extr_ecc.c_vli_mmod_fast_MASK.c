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
typedef  unsigned long long u64 ;

/* Variables and functions */
 int ECC_MAX_DIGITS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long*,unsigned long long*,unsigned long long const*,unsigned int) ; 

__attribute__((used)) static bool FUNC6(u64 *result, u64 *product,
			  const u64 *curve_prime, unsigned int ndigits)
{
	u64 tmp[2 * ECC_MAX_DIGITS];

	/* Currently, both NIST primes have -1 in lowest qword. */
	if (curve_prime[0] != -1ull) {
		/* Try to handle Pseudo-Marsenne primes. */
		if (curve_prime[ndigits - 1] == -1ull) {
			FUNC4(result, product, curve_prime,
					 ndigits);
			return true;
		} else if (curve_prime[ndigits - 1] == 1ull << 63 &&
			   curve_prime[ndigits - 2] == 0) {
			FUNC5(result, product, curve_prime,
					  ndigits);
			return true;
		}
		FUNC1(result, product, curve_prime, ndigits);
		return true;
	}

	switch (ndigits) {
	case 3:
		FUNC2(result, product, curve_prime, tmp);
		break;
	case 4:
		FUNC3(result, product, curve_prime, tmp);
		break;
	default:
		FUNC0("ecc: unsupported digits size!\n");
		return false;
	}

	return true;
}
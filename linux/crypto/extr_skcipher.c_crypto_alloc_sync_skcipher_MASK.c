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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_sync_skcipher {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  EINVAL ; 
 struct crypto_sync_skcipher* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_skcipher*) ; 
 scalar_t__ MAX_SYNC_SKCIPHER_REQSIZE ; 
 scalar_t__ FUNC2 (int) ; 
 struct crypto_skcipher* FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC5 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  crypto_skcipher_type2 ; 

struct crypto_sync_skcipher *FUNC6(
				const char *alg_name, u32 type, u32 mask)
{
	struct crypto_skcipher *tfm;

	/* Only sync algorithms allowed. */
	mask |= CRYPTO_ALG_ASYNC;

	tfm = FUNC3(alg_name, &crypto_skcipher_type2, type, mask);

	/*
	 * Make sure we do not allocate something that might get used with
	 * an on-stack request: check the request size.
	 */
	if (!FUNC1(tfm) && FUNC2(FUNC5(tfm) >
				    MAX_SYNC_SKCIPHER_REQSIZE)) {
		FUNC4(tfm);
		return FUNC0(-EINVAL);
	}

	return (struct crypto_sync_skcipher *)tfm;
}
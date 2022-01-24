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
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_shash*) ; 
 scalar_t__ FUNC4 (struct crypto_shash*) ; 
 struct shash_desc* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC7(const char *driver, u32 type, u32 mask,
		       struct crypto_shash **tfm_ret,
		       struct shash_desc **desc_ret)
{
	struct crypto_shash *tfm;
	struct shash_desc *desc;

	tfm = FUNC2(driver, type, mask);
	if (FUNC0(tfm)) {
		if (FUNC1(tfm) == -ENOENT) {
			/*
			 * This algorithm is only available through the ahash
			 * API, not the shash API, so skip the shash tests.
			 */
			return 0;
		}
		FUNC6("alg: hash: failed to allocate shash transform for %s: %ld\n",
		       driver, FUNC1(tfm));
		return FUNC1(tfm);
	}

	desc = FUNC5(sizeof(*desc) + FUNC4(tfm), GFP_KERNEL);
	if (!desc) {
		FUNC3(tfm);
		return -ENOMEM;
	}
	desc->tfm = tfm;

	*tfm_ret = tfm;
	*desc_ret = desc;
	return 0;
}
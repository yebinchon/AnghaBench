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
struct test_sglist {int dummy; } ;
typedef  struct test_sglist u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  struct test_sglist shash_desc ;
struct hash_testvec {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct crypto_ahash*) ; 
 unsigned int TESTMGR_POISON_LEN ; 
 struct ahash_request* FUNC2 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypto_shash**,struct test_sglist**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC11 (struct test_sglist*) ; 
 scalar_t__ FUNC12 (struct test_sglist*) ; 
 int /*<<< orphan*/  FUNC13 (struct test_sglist*) ; 
 struct test_sglist* FUNC14 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,...) ; 
 int FUNC17 (char const*,struct hash_testvec const*,unsigned int,struct ahash_request*,struct test_sglist*,struct test_sglist*,struct test_sglist*) ; 
 int FUNC18 (char const*,char const*,unsigned int,struct ahash_request*,struct test_sglist*,struct test_sglist*,struct test_sglist*) ; 

__attribute__((used)) static int FUNC19(const struct hash_testvec *vecs,
			   unsigned int num_vecs, const char *driver,
			   u32 type, u32 mask,
			   const char *generic_driver, unsigned int maxkeysize)
{
	struct crypto_ahash *atfm = NULL;
	struct ahash_request *req = NULL;
	struct crypto_shash *stfm = NULL;
	struct shash_desc *desc = NULL;
	struct test_sglist *tsgl = NULL;
	u8 *hashstate = NULL;
	unsigned int statesize;
	unsigned int i;
	int err;

	/*
	 * Always test the ahash API.  This works regardless of whether the
	 * algorithm is implemented as ahash or shash.
	 */

	atfm = FUNC7(driver, type, mask);
	if (FUNC0(atfm)) {
		FUNC16("alg: hash: failed to allocate transform for %s: %ld\n",
		       driver, FUNC1(atfm));
		return FUNC1(atfm);
	}

	req = FUNC2(atfm, GFP_KERNEL);
	if (!req) {
		FUNC16("alg: hash: failed to allocate request for %s\n",
		       driver);
		err = -ENOMEM;
		goto out;
	}

	/*
	 * If available also test the shash API, to cover corner cases that may
	 * be missed by testing the ahash API only.
	 */
	err = FUNC4(driver, type, mask, &stfm, &desc);
	if (err)
		goto out;

	tsgl = FUNC14(sizeof(*tsgl), GFP_KERNEL);
	if (!tsgl || FUNC12(tsgl) != 0) {
		FUNC16("alg: hash: failed to allocate test buffers for %s\n",
		       driver);
		FUNC13(tsgl);
		tsgl = NULL;
		err = -ENOMEM;
		goto out;
	}

	statesize = FUNC6(atfm);
	if (stfm)
		statesize = FUNC15(statesize, FUNC10(stfm));
	hashstate = FUNC14(statesize + TESTMGR_POISON_LEN, GFP_KERNEL);
	if (!hashstate) {
		FUNC16("alg: hash: failed to allocate hash state buffer for %s\n",
		       driver);
		err = -ENOMEM;
		goto out;
	}

	for (i = 0; i < num_vecs; i++) {
		err = FUNC17(driver, &vecs[i], i, req, desc, tsgl,
				    hashstate);
		if (err)
			goto out;
		FUNC5();
	}
	err = FUNC18(driver, generic_driver, maxkeysize, req,
					desc, tsgl, hashstate);
out:
	FUNC13(hashstate);
	if (tsgl) {
		FUNC11(tsgl);
		FUNC13(tsgl);
	}
	FUNC13(desc);
	FUNC9(stfm);
	FUNC3(req);
	FUNC8(atfm);
	return err;
}
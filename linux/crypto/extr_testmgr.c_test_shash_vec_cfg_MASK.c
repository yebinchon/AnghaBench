#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct testvec_config {int name; scalar_t__ finalization_type; scalar_t__ nosimd; } ;
struct test_sglist {int nents; TYPE_1__* sgl; } ;
struct test_sg_division {scalar_t__ flush_type; scalar_t__ nosimd; } ;
struct shash_desc {int /*<<< orphan*/ * __ctx; struct crypto_shash* tfm; } ;
struct hash_testvec {int setkey_error; int digest_error; int /*<<< orphan*/  ksize; int /*<<< orphan*/  key; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 scalar_t__ FINALIZATION_TYPE_DIGEST ; 
 scalar_t__ FINALIZATION_TYPE_FINUP ; 
 scalar_t__ FLUSH_TYPE_REIMPORT ; 
 int HASH_MAX_DIGESTSIZE ; 
 int TESTMGR_POISON_LEN ; 
 int XBUFSIZE ; 
 int FUNC0 (struct test_sglist*,struct hash_testvec const*,struct testvec_config const*,unsigned int const,struct test_sg_division const**) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,unsigned int const,struct hash_testvec const*,char const*,char const*,struct testvec_config const*) ; 
 int FUNC2 (char*,int,char const*,char const*,struct testvec_config const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 (struct crypto_shash*) ; 
 int FUNC6 (struct crypto_shash*) ; 
 int FUNC7 (struct shash_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct crypto_shash*) ; 
 int FUNC9 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct shash_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_shash*) ; 
 int FUNC13 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct shash_desc*) ; 
 int FUNC15 (struct crypto_shash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC16 (struct crypto_shash*) ; 
 int FUNC17 (struct shash_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC22(const char *driver,
			      const struct hash_testvec *vec,
			      const char *vec_name,
			      const struct testvec_config *cfg,
			      struct shash_desc *desc,
			      struct test_sglist *tsgl,
			      u8 *hashstate)
{
	struct crypto_shash *tfm = desc->tfm;
	const unsigned int alignmask = FUNC5(tfm);
	const unsigned int digestsize = FUNC8(tfm);
	const unsigned int statesize = FUNC16(tfm);
	const struct test_sg_division *divs[XBUFSIZE];
	unsigned int i;
	u8 result[HASH_MAX_DIGESTSIZE + TESTMGR_POISON_LEN];
	int err;

	/* Set the key, if specified */
	if (vec->ksize) {
		err = FUNC15(tfm, vec->key, vec->ksize);
		if (err) {
			if (err == vec->setkey_error)
				return 0;
			FUNC18("alg: shash: %s setkey failed on test vector %s; expected_error=%d, actual_error=%d, flags=%#x\n",
			       driver, vec_name, vec->setkey_error, err,
			       FUNC12(tfm));
			return err;
		}
		if (vec->setkey_error) {
			FUNC18("alg: shash: %s setkey unexpectedly succeeded on test vector %s; expected_error=%d\n",
			       driver, vec_name, vec->setkey_error);
			return -EINVAL;
		}
	}

	/* Build the scatterlist for the source data */
	err = FUNC0(tsgl, vec, cfg, alignmask, divs);
	if (err) {
		FUNC18("alg: shash: %s: error preparing scatterlist for test vector %s, cfg=\"%s\"\n",
		       driver, vec_name, cfg->name);
		return err;
	}

	/* Do the actual hashing */

	FUNC21(desc->__ctx, FUNC6(tfm));
	FUNC21(result, digestsize + TESTMGR_POISON_LEN);

	if (cfg->finalization_type == FINALIZATION_TYPE_DIGEST ||
	    vec->digest_error) {
		/* Just using digest() */
		if (tsgl->nents != 1)
			return 0;
		if (cfg->nosimd)
			FUNC3();
		err = FUNC7(desc, FUNC19(&tsgl->sgl[0]),
					  tsgl->sgl[0].length, result);
		if (cfg->nosimd)
			FUNC4();
		if (err) {
			if (err == vec->digest_error)
				return 0;
			FUNC18("alg: shash: %s digest() failed on test vector %s; expected_error=%d, actual_error=%d, cfg=\"%s\"\n",
			       driver, vec_name, vec->digest_error, err,
			       cfg->name);
			return err;
		}
		if (vec->digest_error) {
			FUNC18("alg: shash: %s digest() unexpectedly succeeded on test vector %s; expected_error=%d, cfg=\"%s\"\n",
			       driver, vec_name, vec->digest_error, cfg->name);
			return -EINVAL;
		}
		goto result_ready;
	}

	/* Using init(), zero or more update(), then final() or finup() */

	if (cfg->nosimd)
		FUNC3();
	err = FUNC14(desc);
	if (cfg->nosimd)
		FUNC4();
	err = FUNC2("init", err, driver, vec_name, cfg);
	if (err)
		return err;

	for (i = 0; i < tsgl->nents; i++) {
		if (i + 1 == tsgl->nents &&
		    cfg->finalization_type == FINALIZATION_TYPE_FINUP) {
			if (divs[i]->nosimd)
				FUNC3();
			err = FUNC11(desc, FUNC19(&tsgl->sgl[i]),
						 tsgl->sgl[i].length, result);
			if (divs[i]->nosimd)
				FUNC4();
			err = FUNC2("finup", err, driver, vec_name,
					     cfg);
			if (err)
				return err;
			goto result_ready;
		}
		if (divs[i]->nosimd)
			FUNC3();
		err = FUNC17(desc, FUNC19(&tsgl->sgl[i]),
					  tsgl->sgl[i].length);
		if (divs[i]->nosimd)
			FUNC4();
		err = FUNC2("update", err, driver, vec_name, cfg);
		if (err)
			return err;
		if (divs[i]->flush_type == FLUSH_TYPE_REIMPORT) {
			/* Test ->export() and ->import() */
			FUNC21(hashstate + statesize,
				       TESTMGR_POISON_LEN);
			err = FUNC9(desc, hashstate);
			err = FUNC2("export", err, driver, vec_name,
					     cfg);
			if (err)
				return err;
			if (!FUNC20(hashstate + statesize,
					       TESTMGR_POISON_LEN)) {
				FUNC18("alg: shash: %s export() overran state buffer on test vector %s, cfg=\"%s\"\n",
				       driver, vec_name, cfg->name);
				return -EOVERFLOW;
			}
			FUNC21(desc->__ctx, FUNC6(tfm));
			err = FUNC13(desc, hashstate);
			err = FUNC2("import", err, driver, vec_name,
					     cfg);
			if (err)
				return err;
		}
	}

	if (cfg->nosimd)
		FUNC3();
	err = FUNC10(desc, result);
	if (cfg->nosimd)
		FUNC4();
	err = FUNC2("final", err, driver, vec_name, cfg);
	if (err)
		return err;
result_ready:
	return FUNC1("shash", result, digestsize, vec, vec_name,
				 driver, cfg);
}
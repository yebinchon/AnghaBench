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
typedef  int u32 ;
struct testvec_config {int req_flags; scalar_t__ finalization_type; int /*<<< orphan*/  name; int /*<<< orphan*/  nosimd; } ;
struct test_sglist {unsigned int nents; struct scatterlist* sgl; } ;
struct test_sg_division {scalar_t__ flush_type; int /*<<< orphan*/  nosimd; } ;
struct scatterlist {scalar_t__ length; } ;
struct hash_testvec {int setkey_error; int digest_error; unsigned int psize; int /*<<< orphan*/  ksize; int /*<<< orphan*/  key; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/ * __ctx; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOVERFLOW ; 
 scalar_t__ FINALIZATION_TYPE_DIGEST ; 
 scalar_t__ FINALIZATION_TYPE_FINAL ; 
 scalar_t__ FLUSH_TYPE_NONE ; 
 scalar_t__ FLUSH_TYPE_REIMPORT ; 
 int HASH_MAX_DIGESTSIZE ; 
 int TESTMGR_POISON_LEN ; 
 int XBUFSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (struct test_sglist*,struct hash_testvec const*,struct testvec_config const*,unsigned int const,struct test_sg_division const**) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,unsigned int const,struct hash_testvec const*,char const*,char const*,struct testvec_config const*) ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ *,unsigned int const,char const*,char const*,struct testvec_config const*) ; 
 unsigned int FUNC6 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  crypto_ahash_digest ; 
 unsigned int FUNC7 (struct crypto_ahash*) ; 
 int FUNC8 (struct ahash_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crypto_ahash_final ; 
 int /*<<< orphan*/  crypto_ahash_finup ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_ahash*) ; 
 int FUNC10 (struct ahash_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crypto_ahash_init ; 
 int FUNC11 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC12 (struct ahash_request*) ; 
 int FUNC13 (struct crypto_ahash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  crypto_ahash_update ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int FUNC15 (int /*<<< orphan*/ ,struct ahash_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC19(const char *driver,
			      const struct hash_testvec *vec,
			      const char *vec_name,
			      const struct testvec_config *cfg,
			      struct ahash_request *req,
			      struct test_sglist *tsgl,
			      u8 *hashstate)
{
	struct crypto_ahash *tfm = FUNC12(req);
	const unsigned int alignmask = FUNC6(tfm);
	const unsigned int digestsize = FUNC7(tfm);
	const unsigned int statesize = FUNC14(tfm);
	const u32 req_flags = CRYPTO_TFM_REQ_MAY_BACKLOG | cfg->req_flags;
	const struct test_sg_division *divs[XBUFSIZE];
	FUNC0(wait);
	unsigned int i;
	struct scatterlist *pending_sgl;
	unsigned int pending_len;
	u8 result[HASH_MAX_DIGESTSIZE + TESTMGR_POISON_LEN];
	int err;

	/* Set the key, if specified */
	if (vec->ksize) {
		err = FUNC13(tfm, vec->key, vec->ksize);
		if (err) {
			if (err == vec->setkey_error)
				return 0;
			FUNC16("alg: ahash: %s setkey failed on test vector %s; expected_error=%d, actual_error=%d, flags=%#x\n",
			       driver, vec_name, vec->setkey_error, err,
			       FUNC9(tfm));
			return err;
		}
		if (vec->setkey_error) {
			FUNC16("alg: ahash: %s setkey unexpectedly succeeded on test vector %s; expected_error=%d\n",
			       driver, vec_name, vec->setkey_error);
			return -EINVAL;
		}
	}

	/* Build the scatterlist for the source data */
	err = FUNC3(tsgl, vec, cfg, alignmask, divs);
	if (err) {
		FUNC16("alg: ahash: %s: error preparing scatterlist for test vector %s, cfg=\"%s\"\n",
		       driver, vec_name, cfg->name);
		return err;
	}

	/* Do the actual hashing */

	FUNC18(req->__ctx, FUNC11(tfm));
	FUNC18(result, digestsize + TESTMGR_POISON_LEN);

	if (cfg->finalization_type == FINALIZATION_TYPE_DIGEST ||
	    vec->digest_error) {
		/* Just using digest() */
		FUNC1(req, req_flags, crypto_req_done,
					   &wait);
		FUNC2(req, tsgl->sgl, result, vec->psize);
		err = FUNC15(crypto_ahash_digest, req, &wait, cfg->nosimd);
		if (err) {
			if (err == vec->digest_error)
				return 0;
			FUNC16("alg: ahash: %s digest() failed on test vector %s; expected_error=%d, actual_error=%d, cfg=\"%s\"\n",
			       driver, vec_name, vec->digest_error, err,
			       cfg->name);
			return err;
		}
		if (vec->digest_error) {
			FUNC16("alg: ahash: %s digest() unexpectedly succeeded on test vector %s; expected_error=%d, cfg=\"%s\"\n",
			       driver, vec_name, vec->digest_error, cfg->name);
			return -EINVAL;
		}
		goto result_ready;
	}

	/* Using init(), zero or more update(), then final() or finup() */

	FUNC1(req, req_flags, crypto_req_done, &wait);
	FUNC2(req, NULL, result, 0);
	err = FUNC15(crypto_ahash_init, req, &wait, cfg->nosimd);
	err = FUNC5("init", err, result, digestsize,
				      driver, vec_name, cfg);
	if (err)
		return err;

	pending_sgl = NULL;
	pending_len = 0;
	for (i = 0; i < tsgl->nents; i++) {
		if (divs[i]->flush_type != FLUSH_TYPE_NONE &&
		    pending_sgl != NULL) {
			/* update() with the pending data */
			FUNC1(req, req_flags,
						   crypto_req_done, &wait);
			FUNC2(req, pending_sgl, result,
						pending_len);
			err = FUNC15(crypto_ahash_update, req, &wait,
					  divs[i]->nosimd);
			err = FUNC5("update", err,
						      result, digestsize,
						      driver, vec_name, cfg);
			if (err)
				return err;
			pending_sgl = NULL;
			pending_len = 0;
		}
		if (divs[i]->flush_type == FLUSH_TYPE_REIMPORT) {
			/* Test ->export() and ->import() */
			FUNC18(hashstate + statesize,
				       TESTMGR_POISON_LEN);
			err = FUNC8(req, hashstate);
			err = FUNC5("export", err,
						      result, digestsize,
						      driver, vec_name, cfg);
			if (err)
				return err;
			if (!FUNC17(hashstate + statesize,
					       TESTMGR_POISON_LEN)) {
				FUNC16("alg: ahash: %s export() overran state buffer on test vector %s, cfg=\"%s\"\n",
				       driver, vec_name, cfg->name);
				return -EOVERFLOW;
			}

			FUNC18(req->__ctx, FUNC11(tfm));
			err = FUNC10(req, hashstate);
			err = FUNC5("import", err,
						      result, digestsize,
						      driver, vec_name, cfg);
			if (err)
				return err;
		}
		if (pending_sgl == NULL)
			pending_sgl = &tsgl->sgl[i];
		pending_len += tsgl->sgl[i].length;
	}

	FUNC1(req, req_flags, crypto_req_done, &wait);
	FUNC2(req, pending_sgl, result, pending_len);
	if (cfg->finalization_type == FINALIZATION_TYPE_FINAL) {
		/* finish with update() and final() */
		err = FUNC15(crypto_ahash_update, req, &wait, cfg->nosimd);
		err = FUNC5("update", err, result, digestsize,
					      driver, vec_name, cfg);
		if (err)
			return err;
		err = FUNC15(crypto_ahash_final, req, &wait, cfg->nosimd);
		if (err) {
			FUNC16("alg: ahash: %s final() failed with err %d on test vector %s, cfg=\"%s\"\n",
			       driver, err, vec_name, cfg->name);
			return err;
		}
	} else {
		/* finish with finup() */
		err = FUNC15(crypto_ahash_finup, req, &wait, cfg->nosimd);
		if (err) {
			FUNC16("alg: ahash: %s finup() failed with err %d on test vector %s, cfg=\"%s\"\n",
			       driver, err, vec_name, cfg->name);
			return err;
		}
	}

result_ready:
	return FUNC4("ahash", result, digestsize, vec, vec_name,
				 driver, cfg);
}
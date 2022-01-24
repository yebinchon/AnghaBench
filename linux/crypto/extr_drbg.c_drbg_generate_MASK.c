#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drbg_string {int /*<<< orphan*/  list; int /*<<< orphan*/  len; int /*<<< orphan*/ * buf; } ;
struct drbg_state {int reseed_threshold; int reseed_ctr; int seeded; TYPE_2__* core; TYPE_1__* d_ops; scalar_t__ pr; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int (* generate ) (struct drbg_state*,unsigned char*,unsigned int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int DRBG_CTR ; 
 int DRBG_HMAC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addtllist ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbg_state*) ; 
 unsigned int FUNC3 (struct drbg_state*) ; 
 int FUNC4 (struct drbg_state*,struct drbg_string*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drbg_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct drbg_state*,unsigned char*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct drbg_state *drbg,
			 unsigned char *buf, unsigned int buflen,
			 struct drbg_string *addtl)
{
	int len = 0;
	FUNC0(addtllist);

	if (!drbg->core) {
		FUNC7("DRBG: not yet seeded\n");
		return -EINVAL;
	}
	if (0 == buflen || !buf) {
		FUNC7("DRBG: no output buffer provided\n");
		return -EINVAL;
	}
	if (addtl && NULL == addtl->buf && 0 < addtl->len) {
		FUNC7("DRBG: wrong format of additional information\n");
		return -EINVAL;
	}

	/* 9.3.1 step 2 */
	len = -EINVAL;
	if (buflen > (FUNC3(drbg))) {
		FUNC7("DRBG: requested random numbers too large %u\n",
			 buflen);
		goto err;
	}

	/* 9.3.1 step 3 is implicit with the chosen DRBG */

	/* 9.3.1 step 4 */
	if (addtl && addtl->len > (FUNC2(drbg))) {
		FUNC7("DRBG: additional information string too long %zu\n",
			 addtl->len);
		goto err;
	}
	/* 9.3.1 step 5 is implicit with the chosen DRBG */

	/*
	 * 9.3.1 step 6 and 9 supplemented by 9.3.2 step c is implemented
	 * here. The spec is a bit convoluted here, we make it simpler.
	 */
	if (drbg->reseed_threshold < drbg->reseed_ctr)
		drbg->seeded = false;

	if (drbg->pr || !drbg->seeded) {
		FUNC7("DRBG: reseeding before generation (prediction "
			 "resistance: %s, state %s)\n",
			 drbg->pr ? "true" : "false",
			 drbg->seeded ? "seeded" : "unseeded");
		/* 9.3.1 steps 7.1 through 7.3 */
		len = FUNC4(drbg, addtl, true);
		if (len)
			goto err;
		/* 9.3.1 step 7.4 */
		addtl = NULL;
	}

	if (addtl && 0 < addtl->len)
		FUNC6(&addtl->list, &addtllist);
	/* 9.3.1 step 8 and 10 */
	len = drbg->d_ops->generate(drbg, buf, buflen, &addtllist);

	/* 10.1.1.4 step 6, 10.1.2.5 step 7, 10.2.1.5.2 step 7 */
	drbg->reseed_ctr++;
	if (0 >= len)
		goto err;

	/*
	 * Section 11.3.3 requires to re-perform self tests after some
	 * generated random numbers. The chosen value after which self
	 * test is performed is arbitrary, but it should be reasonable.
	 * However, we do not perform the self tests because of the following
	 * reasons: it is mathematically impossible that the initial self tests
	 * were successfully and the following are not. If the initial would
	 * pass and the following would not, the kernel integrity is violated.
	 * In this case, the entire kernel operation is questionable and it
	 * is unlikely that the integrity violation only affects the
	 * correct operation of the DRBG.
	 *
	 * Albeit the following code is commented out, it is provided in
	 * case somebody has a need to implement the test of 11.3.3.
	 */
#if 0
	if (drbg->reseed_ctr && !(drbg->reseed_ctr % 4096)) {
		int err = 0;
		pr_devel("DRBG: start to perform self test\n");
		if (drbg->core->flags & DRBG_HMAC)
			err = alg_test("drbg_pr_hmac_sha256",
				       "drbg_pr_hmac_sha256", 0, 0);
		else if (drbg->core->flags & DRBG_CTR)
			err = alg_test("drbg_pr_ctr_aes128",
				       "drbg_pr_ctr_aes128", 0, 0);
		else
			err = alg_test("drbg_pr_sha256",
				       "drbg_pr_sha256", 0, 0);
		if (err) {
			pr_err("DRBG: periodical self test failed\n");
			/*
			 * uninstantiate implies that from now on, only errors
			 * are returned when reusing this DRBG cipher handle
			 */
			drbg_uninstantiate(drbg);
			return 0;
		} else {
			pr_devel("DRBG: self test successful\n");
		}
	}
#endif

	/*
	 * All operations were successful, return 0 as mandated by
	 * the kernel crypto API interface.
	 */
	len = 0;
err:
	return len;
}
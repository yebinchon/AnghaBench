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
struct drbg_string {scalar_t__ len; int /*<<< orphan*/  list; scalar_t__ buf; } ;
struct TYPE_4__ {unsigned char* buf; unsigned int len; int /*<<< orphan*/  list; } ;
struct drbg_state {int /*<<< orphan*/  C; int /*<<< orphan*/  V; int /*<<< orphan*/  jent; TYPE_2__ test_data; TYPE_1__* core; } ;
typedef  int /*<<< orphan*/  entropy ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drbg_state*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int FUNC4 (struct drbg_state*,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC5 (struct drbg_state*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drbg_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct drbg_string*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  seedlist ; 

__attribute__((used)) static int FUNC14(struct drbg_state *drbg, struct drbg_string *pers,
		     bool reseed)
{
	int ret;
	unsigned char entropy[((32 + 16) * 2)];
	unsigned int entropylen = FUNC6(drbg->core->flags);
	struct drbg_string data1;
	FUNC1(seedlist);

	/* 9.1 / 9.2 / 9.3.1 step 3 */
	if (pers && pers->len > (FUNC5(drbg))) {
		FUNC13("DRBG: personalization string too long %zu\n",
			 pers->len);
		return -EINVAL;
	}

	if (FUNC10(&drbg->test_data.list)) {
		FUNC8(&data1, drbg->test_data.buf,
				 drbg->test_data.len);
		FUNC13("DRBG: using test entropy\n");
	} else {
		/*
		 * Gather entropy equal to the security strength of the DRBG.
		 * With a derivation function, a nonce is required in addition
		 * to the entropy. A nonce must be at least 1/2 of the security
		 * strength of the DRBG in size. Thus, entropy + nonce is 3/2
		 * of the strength. The consideration of a nonce is only
		 * applicable during initial seeding.
		 */
		FUNC0(!entropylen);
		if (!reseed)
			entropylen = ((entropylen + 1) / 2) * 3;
		FUNC0((entropylen * 2) > sizeof(entropy));

		/* Get seed from in-kernel /dev/urandom */
		ret = FUNC4(drbg, entropy, entropylen);
		if (ret)
			goto out;

		if (!drbg->jent) {
			FUNC8(&data1, entropy, entropylen);
			FUNC13("DRBG: (re)seeding with %u bytes of entropy\n",
				 entropylen);
		} else {
			/* Get seed from Jitter RNG */
			ret = FUNC3(drbg->jent,
						   entropy + entropylen,
						   entropylen);
			if (ret) {
				FUNC13("DRBG: jent failed with %d\n", ret);
				goto out;
			}

			FUNC8(&data1, entropy, entropylen * 2);
			FUNC13("DRBG: (re)seeding with %u bytes of entropy\n",
				 entropylen * 2);
		}
	}
	FUNC9(&data1.list, &seedlist);

	/*
	 * concatenation of entropy with personalization str / addtl input)
	 * the variable pers is directly handed in by the caller, so check its
	 * contents whether it is appropriate
	 */
	if (pers && pers->buf && 0 < pers->len) {
		FUNC9(&pers->list, &seedlist);
		FUNC13("DRBG: using personalization string\n");
	}

	if (!reseed) {
		FUNC11(drbg->V, 0, FUNC7(drbg));
		FUNC11(drbg->C, 0, FUNC7(drbg));
	}

	ret = FUNC2(drbg, &seedlist, reseed);

out:
	FUNC12(entropy, entropylen * 2);

	return ret;
}
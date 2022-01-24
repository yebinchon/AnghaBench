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
typedef  unsigned int u32 ;
struct test_mb_ahash_data {int /*<<< orphan*/ * xbuf; int /*<<< orphan*/  req; int /*<<< orphan*/  result; scalar_t__ sg; int /*<<< orphan*/  wait; } ;
struct hash_speed {unsigned int blen; unsigned int plen; scalar_t__ klen; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_ahash*) ; 
 unsigned int XBUFSIZE ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ahash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  crypto_ahash ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ahash*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct crypto_ahash* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct crypto_ahash*) ; 
 struct test_mb_ahash_data* FUNC12 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct test_mb_ahash_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC19 (struct test_mb_ahash_data*,int,unsigned int) ; 
 int FUNC20 (struct test_mb_ahash_data*,int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tvmem ; 

__attribute__((used)) static void FUNC23(const char *algo, unsigned int secs,
				struct hash_speed *speed, u32 num_mb)
{
	struct test_mb_ahash_data *data;
	struct crypto_ahash *tfm;
	unsigned int i, j, k;
	int ret;

	data = FUNC12(num_mb, sizeof(*data), GFP_KERNEL);
	if (!data)
		return;

	tfm = FUNC8(algo, 0, 0);
	if (FUNC0(tfm)) {
		FUNC15("failed to load transform for %s: %ld\n",
			algo, FUNC1(tfm));
		goto free_data;
	}

	for (i = 0; i < num_mb; ++i) {
		if (FUNC21(data[i].xbuf))
			goto out;

		FUNC10(&data[i].wait);

		data[i].req = FUNC2(tfm, GFP_KERNEL);
		if (!data[i].req) {
			FUNC15("alg: hash: Failed to allocate request for %s\n",
			       algo);
			goto out;
		}

		FUNC4(data[i].req, 0, crypto_req_done,
					   &data[i].wait);

		FUNC17(data[i].sg, XBUFSIZE);
		for (j = 0; j < XBUFSIZE; j++) {
			FUNC18(data[i].sg + j, data[i].xbuf[j], PAGE_SIZE);
			FUNC14(data[i].xbuf[j], 0xff, PAGE_SIZE);
		}
	}

	FUNC16("\ntesting speed of multibuffer %s (%s)\n", algo,
		FUNC11(crypto_ahash, tfm));

	for (i = 0; speed[i].blen != 0; i++) {
		/* For some reason this only tests digests. */
		if (speed[i].blen != speed[i].plen)
			continue;

		if (speed[i].blen > XBUFSIZE * PAGE_SIZE) {
			FUNC15("template (%u) too big for tvmem (%lu)\n",
			       speed[i].blen, XBUFSIZE * PAGE_SIZE);
			goto out;
		}

		if (speed[i].klen)
			FUNC7(tfm, tvmem[0], speed[i].klen);

		for (k = 0; k < num_mb; k++)
			FUNC5(data[k].req, data[k].sg,
						data[k].result, speed[i].blen);

		FUNC16("test%3u "
			"(%5u byte blocks,%5u bytes per update,%4u updates): ",
			i, speed[i].blen, speed[i].plen,
			speed[i].blen / speed[i].plen);

		if (secs) {
			ret = FUNC20(data, speed[i].blen, secs,
						    num_mb);
			FUNC6();
		} else {
			ret = FUNC19(data, speed[i].blen, num_mb);
		}


		if (ret) {
			FUNC15("At least one hashing failed ret=%d\n", ret);
			break;
		}
	}

out:
	for (k = 0; k < num_mb; ++k)
		FUNC3(data[k].req);

	for (k = 0; k < num_mb; ++k)
		FUNC22(data[k].xbuf);

	FUNC9(tfm);

free_data:
	FUNC13(data);
}
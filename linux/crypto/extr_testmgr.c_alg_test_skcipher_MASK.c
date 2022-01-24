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
typedef  int /*<<< orphan*/  u32 ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cipher_test_suite {scalar_t__ count; } ;
struct cipher_test_sglists {int dummy; } ;
struct TYPE_2__ {struct cipher_test_suite cipher; } ;
struct alg_test_desc {int /*<<< orphan*/  generic_driver; TYPE_1__ suite; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECRYPT ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENCRYPT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct cipher_test_sglists* FUNC2 () ; 
 struct crypto_skcipher* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (struct cipher_test_sglists*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 struct skcipher_request* FUNC7 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,struct cipher_test_suite const*,struct skcipher_request*,struct cipher_test_sglists*) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ ,struct skcipher_request*,struct cipher_test_sglists*) ; 

__attribute__((used)) static int FUNC11(const struct alg_test_desc *desc,
			     const char *driver, u32 type, u32 mask)
{
	const struct cipher_test_suite *suite = &desc->suite.cipher;
	struct crypto_skcipher *tfm;
	struct skcipher_request *req = NULL;
	struct cipher_test_sglists *tsgls = NULL;
	int err;

	if (suite->count <= 0) {
		FUNC6("alg: skcipher: empty test suite for %s\n", driver);
		return -EINVAL;
	}

	tfm = FUNC3(driver, type, mask);
	if (FUNC0(tfm)) {
		FUNC6("alg: skcipher: failed to allocate transform for %s: %ld\n",
		       driver, FUNC1(tfm));
		return FUNC1(tfm);
	}

	req = FUNC7(tfm, GFP_KERNEL);
	if (!req) {
		FUNC6("alg: skcipher: failed to allocate request for %s\n",
		       driver);
		err = -ENOMEM;
		goto out;
	}

	tsgls = FUNC2();
	if (!tsgls) {
		FUNC6("alg: skcipher: failed to allocate test buffers for %s\n",
		       driver);
		err = -ENOMEM;
		goto out;
	}

	err = FUNC9(driver, ENCRYPT, suite, req, tsgls);
	if (err)
		goto out;

	err = FUNC9(driver, DECRYPT, suite, req, tsgls);
	if (err)
		goto out;

	err = FUNC10(driver, desc->generic_driver, req,
					    tsgls);
out:
	FUNC5(tsgls);
	FUNC8(req);
	FUNC4(tfm);
	return err;
}
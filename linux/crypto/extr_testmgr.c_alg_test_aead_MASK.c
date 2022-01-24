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
struct crypto_aead {int dummy; } ;
struct cipher_test_sglists {int dummy; } ;
struct aead_test_suite {scalar_t__ count; } ;
struct TYPE_2__ {struct aead_test_suite aead; } ;
struct alg_test_desc {TYPE_1__ suite; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECRYPT ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENCRYPT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 struct aead_request* FUNC2 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 
 struct cipher_test_sglists* FUNC4 () ; 
 struct crypto_aead* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC7 (struct cipher_test_sglists*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,struct aead_test_suite const*,struct aead_request*,struct cipher_test_sglists*) ; 
 int FUNC10 (char const*,struct alg_test_desc const*,struct aead_request*,struct cipher_test_sglists*) ; 

__attribute__((used)) static int FUNC11(const struct alg_test_desc *desc, const char *driver,
			 u32 type, u32 mask)
{
	const struct aead_test_suite *suite = &desc->suite.aead;
	struct crypto_aead *tfm;
	struct aead_request *req = NULL;
	struct cipher_test_sglists *tsgls = NULL;
	int err;

	if (suite->count <= 0) {
		FUNC8("alg: aead: empty test suite for %s\n", driver);
		return -EINVAL;
	}

	tfm = FUNC5(driver, type, mask);
	if (FUNC0(tfm)) {
		FUNC8("alg: aead: failed to allocate transform for %s: %ld\n",
		       driver, FUNC1(tfm));
		return FUNC1(tfm);
	}

	req = FUNC2(tfm, GFP_KERNEL);
	if (!req) {
		FUNC8("alg: aead: failed to allocate request for %s\n",
		       driver);
		err = -ENOMEM;
		goto out;
	}

	tsgls = FUNC4();
	if (!tsgls) {
		FUNC8("alg: aead: failed to allocate test buffers for %s\n",
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

	err = FUNC10(driver, desc, req, tsgls);
out:
	FUNC7(tsgls);
	FUNC3(req);
	FUNC6(tfm);
	return err;
}
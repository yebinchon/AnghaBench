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

/* Variables and functions */
 scalar_t__ BCRYPT_MAX_KEYLEN ; 
 int ENC_MAGIC_LEN ; 
 int ENC_PRODUCT_LEN ; 
 int ENC_VERSION_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * crypt_key ; 
 int /*<<< orphan*/  do_decrypt ; 
 int /*<<< orphan*/ * ifname ; 
 int /*<<< orphan*/ * magic ; 
 int /*<<< orphan*/ * ofname ; 
 int /*<<< orphan*/ * product ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * version ; 

__attribute__((used)) static int FUNC2(void)
{
	int ret = -1;

	if (ifname == NULL) {
		FUNC0("no input file specified");
		goto out;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		goto out;
	}

	if (crypt_key == NULL) {
		FUNC0("no key specified");
		goto out;
	} else if (FUNC1(crypt_key) > BCRYPT_MAX_KEYLEN) {
		FUNC0("key '%s' is too long", crypt_key);
		goto out;
	}

	if (FUNC1(magic) != (ENC_MAGIC_LEN - 1)) {
		FUNC0("length of magic must be %d", ENC_MAGIC_LEN - 1);
		goto out;
	}

	if (!do_decrypt) {
		if (product == NULL) {
			FUNC0("no product specified");
			goto out;
		}

		if (version == NULL) {
			FUNC0("no version specified");
			goto out;
		}

		if (FUNC1(product) > (ENC_PRODUCT_LEN - 1)) {
			FUNC0("product name '%s' is too long", product);
			goto out;
		}

		if (FUNC1(version) > (ENC_VERSION_LEN - 1)) {
			FUNC0("version '%s' is too long", version);
			goto out;
		}
	}

	ret = 0;

out:
	return ret;
}
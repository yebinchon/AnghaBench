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
struct crypto_sync_skcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_sync_skcipher*) ; 
 struct crypto_sync_skcipher* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_sync_skcipher* crypto_default_null_skcipher ; 
 int /*<<< orphan*/  crypto_default_null_skcipher_lock ; 
 int /*<<< orphan*/  crypto_default_null_skcipher_refcnt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct crypto_sync_skcipher *FUNC4(void)
{
	struct crypto_sync_skcipher *tfm;

	FUNC2(&crypto_default_null_skcipher_lock);
	tfm = crypto_default_null_skcipher;

	if (!tfm) {
		tfm = FUNC1("ecb(cipher_null)", 0, 0);
		if (FUNC0(tfm))
			goto unlock;

		crypto_default_null_skcipher = tfm;
	}

	crypto_default_null_skcipher_refcnt++;

unlock:
	FUNC3(&crypto_default_null_skcipher_lock);

	return tfm;
}
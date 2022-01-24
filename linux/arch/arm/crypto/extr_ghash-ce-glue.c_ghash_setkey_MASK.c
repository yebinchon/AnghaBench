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
struct ghash_key {int /*<<< orphan*/  h4; int /*<<< orphan*/  k; int /*<<< orphan*/  h3; int /*<<< orphan*/  h2; int /*<<< orphan*/  h; } ;
struct crypto_shash {int dummy; } ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 unsigned int GHASH_BLOCK_SIZE ; 
 struct ghash_key* FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_shash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct crypto_shash *tfm,
			const u8 *inkey, unsigned int keylen)
{
	struct ghash_key *key = FUNC0(tfm);
	be128 h;

	if (keylen != GHASH_BLOCK_SIZE) {
		FUNC1(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	/* needed for the fallback */
	FUNC4(&key->k, inkey, GHASH_BLOCK_SIZE);
	FUNC3(key->h, &key->k);

	h = key->k;
	FUNC2(&h, &key->k);
	FUNC3(key->h2, &h);

	FUNC2(&h, &key->k);
	FUNC3(key->h3, &h);

	FUNC2(&h, &key->k);
	FUNC3(key->h4, &h);

	return 0;
}
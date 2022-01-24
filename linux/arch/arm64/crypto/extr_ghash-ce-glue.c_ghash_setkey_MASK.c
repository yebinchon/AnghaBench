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
struct ghash_key {int dummy; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 unsigned int GHASH_BLOCK_SIZE ; 
 int FUNC0 (struct ghash_key*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct ghash_key* FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct crypto_shash *tfm,
			const u8 *inkey, unsigned int keylen)
{
	struct ghash_key *key = FUNC1(tfm);

	if (keylen != GHASH_BLOCK_SIZE) {
		FUNC2(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	return FUNC0(key, inkey, keylen);
}
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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct des3_ede_sparc64_ctx {int /*<<< orphan*/ * decrypt_expkey; int /*<<< orphan*/ * encrypt_expkey; } ;
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  k3 ;
typedef  int /*<<< orphan*/  k2 ;
typedef  int /*<<< orphan*/  k1 ;

/* Variables and functions */
 int DES_EXPKEY_WORDS ; 
 int /*<<< orphan*/  DES_KEY_SIZE ; 
 int FUNC0 (struct crypto_tfm*,int /*<<< orphan*/  const*) ; 
 struct des3_ede_sparc64_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm, const u8 *key,
			    unsigned int keylen)
{
	struct des3_ede_sparc64_ctx *dctx = FUNC1(tfm);
	u64 k1[DES_EXPKEY_WORDS / 2];
	u64 k2[DES_EXPKEY_WORDS / 2];
	u64 k3[DES_EXPKEY_WORDS / 2];
	int err;

	err = FUNC0(tfm, key);
	if (err)
		return err;

	FUNC2((const u32 *)key, k1);
	key += DES_KEY_SIZE;
	FUNC2((const u32 *)key, k2);
	key += DES_KEY_SIZE;
	FUNC2((const u32 *)key, k3);

	FUNC4(&dctx->encrypt_expkey[0], &k1[0], sizeof(k1));
	FUNC3(&dctx->encrypt_expkey[DES_EXPKEY_WORDS / 2], &k2[0]);
	FUNC4(&dctx->encrypt_expkey[(DES_EXPKEY_WORDS / 2) * 2],
	       &k3[0], sizeof(k3));

	FUNC3(&dctx->decrypt_expkey[0], &k3[0]);
	FUNC4(&dctx->decrypt_expkey[DES_EXPKEY_WORDS / 2],
	       &k2[0], sizeof(k2));
	FUNC3(&dctx->decrypt_expkey[(DES_EXPKEY_WORDS / 2) * 2],
			   &k1[0]);

	return 0;
}
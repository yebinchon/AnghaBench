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
typedef  int /*<<< orphan*/  u32 ;
struct des_sparc64_ctx {int /*<<< orphan*/ * encrypt_expkey; int /*<<< orphan*/ * decrypt_expkey; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_tfm*,int /*<<< orphan*/  const*) ; 
 struct des_sparc64_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm, const u8 *key,
		       unsigned int keylen)
{
	struct des_sparc64_ctx *dctx = FUNC1(tfm);
	int err;

	/* Even though we have special instructions for key expansion,
	 * we call des_verify_key() so that we don't have to write our own
	 * weak key detection code.
	 */
	err = FUNC0(tfm, key);
	if (err)
		return err;

	FUNC2((const u32 *) key, &dctx->encrypt_expkey[0]);
	FUNC3(&dctx->decrypt_expkey[0], &dctx->encrypt_expkey[0]);

	return 0;
}
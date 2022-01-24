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
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;
struct camellia_sparc64_ctx {unsigned int key_len; int /*<<< orphan*/ * decrypt_key; int /*<<< orphan*/ * encrypt_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 struct camellia_sparc64_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm, const u8 *_in_key,
			    unsigned int key_len)
{
	struct camellia_sparc64_ctx *ctx = FUNC1(tfm);
	const u32 *in_key = (const u32 *) _in_key;
	u32 *flags = &tfm->crt_flags;

	if (key_len != 16 && key_len != 24 && key_len != 32) {
		*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	ctx->key_len = key_len;

	FUNC0(in_key, &ctx->encrypt_key[0],
				    key_len, &ctx->decrypt_key[0]);
	return 0;
}
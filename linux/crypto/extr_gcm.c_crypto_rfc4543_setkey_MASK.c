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
struct crypto_rfc4543_ctx {int /*<<< orphan*/  nonce; struct crypto_aead* child; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*,int) ; 
 struct crypto_rfc4543_ctx* FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int) ; 
 int FUNC4 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6(struct crypto_aead *parent, const u8 *key,
				 unsigned int keylen)
{
	struct crypto_rfc4543_ctx *ctx = FUNC1(parent);
	struct crypto_aead *child = ctx->child;
	int err;

	if (keylen < 4)
		return -EINVAL;

	keylen -= 4;
	FUNC5(ctx->nonce, key + keylen, 4);

	FUNC0(child, CRYPTO_TFM_REQ_MASK);
	FUNC3(child, FUNC2(parent) &
				     CRYPTO_TFM_REQ_MASK);
	err = FUNC4(child, key, keylen);
	FUNC3(parent, FUNC2(child) &
				      CRYPTO_TFM_RES_MASK);

	return err;
}
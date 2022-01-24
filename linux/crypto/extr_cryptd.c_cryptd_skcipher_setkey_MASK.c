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
struct crypto_sync_skcipher {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cryptd_skcipher_ctx {struct crypto_sync_skcipher* child; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 struct cryptd_skcipher_ctx* FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_sync_skcipher*,int) ; 
 int FUNC4 (struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_sync_skcipher*,int) ; 
 int FUNC6 (struct crypto_sync_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *parent,
				  const u8 *key, unsigned int keylen)
{
	struct cryptd_skcipher_ctx *ctx = FUNC0(parent);
	struct crypto_sync_skcipher *child = ctx->child;
	int err;

	FUNC3(child, CRYPTO_TFM_REQ_MASK);
	FUNC5(child,
				       FUNC1(parent) &
					 CRYPTO_TFM_REQ_MASK);
	err = FUNC6(child, key, keylen);
	FUNC2(parent,
				  FUNC4(child) &
					  CRYPTO_TFM_RES_MASK);
	return err;
}
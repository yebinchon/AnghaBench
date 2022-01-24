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
struct crypto_skcipher {int dummy; } ;
struct crypto_cts_ctx {struct crypto_skcipher* child; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher*,int) ; 
 struct crypto_cts_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*,int) ; 
 int FUNC4 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct crypto_skcipher *parent, const u8 *key,
			     unsigned int keylen)
{
	struct crypto_cts_ctx *ctx = FUNC1(parent);
	struct crypto_skcipher *child = ctx->child;
	int err;

	FUNC0(child, CRYPTO_TFM_REQ_MASK);
	FUNC3(child, FUNC2(parent) &
					 CRYPTO_TFM_REQ_MASK);
	err = FUNC4(child, key, keylen);
	FUNC3(parent, FUNC2(child) &
					  CRYPTO_TFM_RES_MASK);
	return err;
}
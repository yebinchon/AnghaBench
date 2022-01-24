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
struct pkcs1pad_ctx {int key_size; int /*<<< orphan*/  child; } ;
struct crypto_akcipher {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int PAGE_SIZE ; 
 struct pkcs1pad_ctx* FUNC0 (struct crypto_akcipher*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_akcipher *tfm, const void *key,
		unsigned int keylen)
{
	struct pkcs1pad_ctx *ctx = FUNC0(tfm);
	int err;

	ctx->key_size = 0;

	err = FUNC2(ctx->child, key, keylen);
	if (err)
		return err;

	/* Find out new modulus size from rsa implementation */
	err = FUNC1(ctx->child);
	if (err > PAGE_SIZE)
		return -ENOTSUPP;

	ctx->key_size = err;
	return 0;
}
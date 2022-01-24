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
struct aesbs_xts_ctx {int /*<<< orphan*/  tweak_tfm; int /*<<< orphan*/  cts_tfm; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct aesbs_xts_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int FUNC3 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_skcipher *tfm, const u8 *in_key,
			    unsigned int key_len)
{
	struct aesbs_xts_ctx *ctx = FUNC2(tfm);
	int err;

	err = FUNC3(tfm, in_key, key_len);
	if (err)
		return err;

	key_len /= 2;
	err = FUNC1(ctx->cts_tfm, in_key, key_len);
	if (err)
		return err;
	err = FUNC1(ctx->tweak_tfm, in_key + key_len, key_len);
	if (err)
		return err;

	return FUNC0(tfm, in_key, key_len);
}
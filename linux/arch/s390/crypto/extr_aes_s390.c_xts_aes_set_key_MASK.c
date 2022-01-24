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
struct s390_xts_ctx {unsigned long fc; unsigned int key_len; int /*<<< orphan*/  pcc_key; int /*<<< orphan*/  key; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;

/* Variables and functions */
 unsigned long CPACF_KM_XTS_128 ; 
 unsigned long CPACF_KM_XTS_256 ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 struct s390_xts_ctx* FUNC1 (struct crypto_tfm*) ; 
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  km_functions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC3 (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm, const u8 *in_key,
			   unsigned int key_len)
{
	struct s390_xts_ctx *xts_ctx = FUNC1(tfm);
	unsigned long fc;
	int err;

	err = FUNC3(tfm, in_key, key_len);
	if (err)
		return err;

	/* In fips mode only 128 bit or 256 bit keys are valid */
	if (fips_enabled && key_len != 32 && key_len != 64) {
		tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	/* Pick the correct function code based on the key length */
	fc = (key_len == 32) ? CPACF_KM_XTS_128 :
	     (key_len == 64) ? CPACF_KM_XTS_256 : 0;

	/* Check if the function code is available */
	xts_ctx->fc = (fc && FUNC0(&km_functions, fc)) ? fc : 0;
	if (!xts_ctx->fc)
		return 0;

	/* Split the XTS key into the two subkeys */
	key_len = key_len / 2;
	xts_ctx->key_len = key_len;
	FUNC2(xts_ctx->key, in_key, key_len);
	FUNC2(xts_ctx->pcc_key, in_key + key_len, key_len);
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {unsigned int key_len; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {unsigned int w; } ;
struct dynamic_sa_ctl {TYPE_3__ sa_command_1; TYPE_1__ sa_contents; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct crypto4xx_ctx {int sa_len; scalar_t__ sa_out; scalar_t__ sa_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_FEEDBACK_MODE_NO_FB ; 
 int /*<<< orphan*/  CRYPTO_MODE_CTR ; 
 int /*<<< orphan*/  DIR_INBOUND ; 
 int /*<<< orphan*/  DIR_OUTBOUND ; 
 scalar_t__ SA_AES128_CCM_LEN ; 
 unsigned int SA_AES_CCM_CONTENTS ; 
 int /*<<< orphan*/  SA_CIPHER_ALG_AES ; 
 int /*<<< orphan*/  SA_COPY_PAD ; 
 int /*<<< orphan*/  SA_COPY_PAYLOAD ; 
 int /*<<< orphan*/  SA_EXTENDED_SN_OFF ; 
 int /*<<< orphan*/  SA_HASH_ALG_CBC_MAC ; 
 int /*<<< orphan*/  SA_HASH_MODE_HASH ; 
 int /*<<< orphan*/  SA_LOAD_HASH_FROM_SA ; 
 int /*<<< orphan*/  SA_LOAD_IV_FROM_STATE ; 
 int /*<<< orphan*/  SA_MC_ENABLE ; 
 int /*<<< orphan*/  SA_NOT_COPY_HDR ; 
 int /*<<< orphan*/  SA_NOT_COPY_PAD ; 
 int /*<<< orphan*/  SA_NOT_SAVE_IV ; 
 int /*<<< orphan*/  SA_NO_HEADER_PROC ; 
 int /*<<< orphan*/  SA_OPCODE_ENCRYPT_HASH ; 
 int /*<<< orphan*/  SA_OPCODE_HASH_DECRYPT ; 
 int /*<<< orphan*/  SA_OP_GROUP_BASIC ; 
 int /*<<< orphan*/  SA_PAD_TYPE_ZERO ; 
 int /*<<< orphan*/  SA_SAVE_HASH ; 
 int /*<<< orphan*/  SA_SEQ_MASK_OFF ; 
 int FUNC0 (struct crypto4xx_ctx*,struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC1 (struct crypto4xx_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto4xx_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto_tfm* FUNC4 (struct crypto_aead*) ; 
 struct crypto4xx_ctx* FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (struct dynamic_sa_ctl*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dynamic_sa_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dynamic_sa_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct crypto_aead *cipher, const u8 *key,
			     unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC4(cipher);
	struct crypto4xx_ctx *ctx = FUNC5(tfm);
	struct dynamic_sa_ctl *sa;
	int rc = 0;

	rc = FUNC0(ctx, cipher, key, keylen);
	if (rc)
		return rc;

	if (ctx->sa_in || ctx->sa_out)
		FUNC2(ctx);

	rc = FUNC1(ctx, SA_AES128_CCM_LEN + (keylen - 16) / 4);
	if (rc)
		return rc;

	/* Setup SA */
	sa = (struct dynamic_sa_ctl *) ctx->sa_in;
	sa->sa_contents.w = SA_AES_CCM_CONTENTS | (keylen << 2);

	FUNC8(sa, SA_SAVE_HASH, SA_NOT_SAVE_IV,
				 SA_LOAD_HASH_FROM_SA, SA_LOAD_IV_FROM_STATE,
				 SA_NO_HEADER_PROC, SA_HASH_ALG_CBC_MAC,
				 SA_CIPHER_ALG_AES,
				 SA_PAD_TYPE_ZERO, SA_OP_GROUP_BASIC,
				 SA_OPCODE_HASH_DECRYPT, DIR_INBOUND);

	FUNC9(sa, CRYPTO_MODE_CTR, SA_HASH_MODE_HASH,
				 CRYPTO_FEEDBACK_MODE_NO_FB, SA_EXTENDED_SN_OFF,
				 SA_SEQ_MASK_OFF, SA_MC_ENABLE,
				 SA_NOT_COPY_PAD, SA_COPY_PAYLOAD,
				 SA_NOT_COPY_HDR);

	sa->sa_command_1.bf.key_len = keylen >> 3;

	FUNC3(FUNC6(sa), key, keylen);

	FUNC7(ctx->sa_out, ctx->sa_in, ctx->sa_len * 4);
	sa = (struct dynamic_sa_ctl *) ctx->sa_out;

	FUNC8(sa, SA_SAVE_HASH, SA_NOT_SAVE_IV,
				 SA_LOAD_HASH_FROM_SA, SA_LOAD_IV_FROM_STATE,
				 SA_NO_HEADER_PROC, SA_HASH_ALG_CBC_MAC,
				 SA_CIPHER_ALG_AES,
				 SA_PAD_TYPE_ZERO, SA_OP_GROUP_BASIC,
				 SA_OPCODE_ENCRYPT_HASH, DIR_OUTBOUND);

	FUNC9(sa, CRYPTO_MODE_CTR, SA_HASH_MODE_HASH,
				 CRYPTO_FEEDBACK_MODE_NO_FB, SA_EXTENDED_SN_OFF,
				 SA_SEQ_MASK_OFF, SA_MC_ENABLE,
				 SA_COPY_PAD, SA_COPY_PAYLOAD,
				 SA_NOT_COPY_HDR);

	sa->sa_command_1.bf.key_len = keylen >> 3;
	return 0;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {unsigned int key_len; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {unsigned int w; } ;
struct dynamic_sa_ctl {TYPE_3__ sa_command_1; TYPE_1__ sa_contents; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct crypto4xx_ctx {int sa_len; scalar_t__ sa_out; scalar_t__ sa_in; } ;


 int CRYPTO_FEEDBACK_MODE_NO_FB ;
 int CRYPTO_MODE_CTR ;
 int DIR_INBOUND ;
 int DIR_OUTBOUND ;
 scalar_t__ SA_AES128_CCM_LEN ;
 unsigned int SA_AES_CCM_CONTENTS ;
 int SA_CIPHER_ALG_AES ;
 int SA_COPY_PAD ;
 int SA_COPY_PAYLOAD ;
 int SA_EXTENDED_SN_OFF ;
 int SA_HASH_ALG_CBC_MAC ;
 int SA_HASH_MODE_HASH ;
 int SA_LOAD_HASH_FROM_SA ;
 int SA_LOAD_IV_FROM_STATE ;
 int SA_MC_ENABLE ;
 int SA_NOT_COPY_HDR ;
 int SA_NOT_COPY_PAD ;
 int SA_NOT_SAVE_IV ;
 int SA_NO_HEADER_PROC ;
 int SA_OPCODE_ENCRYPT_HASH ;
 int SA_OPCODE_HASH_DECRYPT ;
 int SA_OP_GROUP_BASIC ;
 int SA_PAD_TYPE_ZERO ;
 int SA_SAVE_HASH ;
 int SA_SEQ_MASK_OFF ;
 int crypto4xx_aead_setup_fallback (struct crypto4xx_ctx*,struct crypto_aead*,int const*,unsigned int) ;
 int crypto4xx_alloc_sa (struct crypto4xx_ctx*,scalar_t__) ;
 int crypto4xx_free_sa (struct crypto4xx_ctx*) ;
 int crypto4xx_memcpy_to_le32 (int ,int const*,unsigned int) ;
 struct crypto_tfm* crypto_aead_tfm (struct crypto_aead*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int get_dynamic_sa_key_field (struct dynamic_sa_ctl*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int set_dynamic_sa_command_0 (struct dynamic_sa_ctl*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int set_dynamic_sa_command_1 (struct dynamic_sa_ctl*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

int crypto4xx_setkey_aes_ccm(struct crypto_aead *cipher, const u8 *key,
        unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_aead_tfm(cipher);
 struct crypto4xx_ctx *ctx = crypto_tfm_ctx(tfm);
 struct dynamic_sa_ctl *sa;
 int rc = 0;

 rc = crypto4xx_aead_setup_fallback(ctx, cipher, key, keylen);
 if (rc)
  return rc;

 if (ctx->sa_in || ctx->sa_out)
  crypto4xx_free_sa(ctx);

 rc = crypto4xx_alloc_sa(ctx, SA_AES128_CCM_LEN + (keylen - 16) / 4);
 if (rc)
  return rc;


 sa = (struct dynamic_sa_ctl *) ctx->sa_in;
 sa->sa_contents.w = SA_AES_CCM_CONTENTS | (keylen << 2);

 set_dynamic_sa_command_0(sa, SA_SAVE_HASH, SA_NOT_SAVE_IV,
     SA_LOAD_HASH_FROM_SA, SA_LOAD_IV_FROM_STATE,
     SA_NO_HEADER_PROC, SA_HASH_ALG_CBC_MAC,
     SA_CIPHER_ALG_AES,
     SA_PAD_TYPE_ZERO, SA_OP_GROUP_BASIC,
     SA_OPCODE_HASH_DECRYPT, DIR_INBOUND);

 set_dynamic_sa_command_1(sa, CRYPTO_MODE_CTR, SA_HASH_MODE_HASH,
     CRYPTO_FEEDBACK_MODE_NO_FB, SA_EXTENDED_SN_OFF,
     SA_SEQ_MASK_OFF, SA_MC_ENABLE,
     SA_NOT_COPY_PAD, SA_COPY_PAYLOAD,
     SA_NOT_COPY_HDR);

 sa->sa_command_1.bf.key_len = keylen >> 3;

 crypto4xx_memcpy_to_le32(get_dynamic_sa_key_field(sa), key, keylen);

 memcpy(ctx->sa_out, ctx->sa_in, ctx->sa_len * 4);
 sa = (struct dynamic_sa_ctl *) ctx->sa_out;

 set_dynamic_sa_command_0(sa, SA_SAVE_HASH, SA_NOT_SAVE_IV,
     SA_LOAD_HASH_FROM_SA, SA_LOAD_IV_FROM_STATE,
     SA_NO_HEADER_PROC, SA_HASH_ALG_CBC_MAC,
     SA_CIPHER_ALG_AES,
     SA_PAD_TYPE_ZERO, SA_OP_GROUP_BASIC,
     SA_OPCODE_ENCRYPT_HASH, DIR_OUTBOUND);

 set_dynamic_sa_command_1(sa, CRYPTO_MODE_CTR, SA_HASH_MODE_HASH,
     CRYPTO_FEEDBACK_MODE_NO_FB, SA_EXTENDED_SN_OFF,
     SA_SEQ_MASK_OFF, SA_MC_ENABLE,
     SA_COPY_PAD, SA_COPY_PAYLOAD,
     SA_NOT_COPY_HDR);

 sa->sa_command_1.bf.key_len = keylen >> 3;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int crypto_mode9_8; } ;
struct TYPE_9__ {TYPE_3__ bf; } ;
struct TYPE_6__ {int digest_len; } ;
struct TYPE_7__ {TYPE_1__ bf; } ;
struct dynamic_sa_ctl {TYPE_4__ sa_command_1; TYPE_2__ sa_command_0; } ;
struct crypto_aead {int dummy; } ;
struct crypto4xx_ctx {int sa_len; int sa_out; int sa_in; } ;
struct crypto4xx_aead_reqctx {int dst; } ;
struct TYPE_10__ {int tfm; } ;
struct aead_request {unsigned int cryptlen; int* iv; int assoclen; int dst; int src; TYPE_5__ base; } ;
typedef int iv ;
typedef int __le32 ;


 int SA_AES128_CCM_LEN ;
 struct crypto4xx_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 int cpu_to_le32 (int ) ;
 int crypto4xx_aead_fallback (struct aead_request*,struct crypto4xx_ctx*,int) ;
 scalar_t__ crypto4xx_aead_need_fallback (struct aead_request*,unsigned int,int,int) ;
 int crypto4xx_build_pd (TYPE_5__*,struct crypto4xx_ctx*,int ,int ,unsigned int,int *,int,struct dynamic_sa_ctl*,int,int ,int ) ;
 int crypto4xx_memcpy_to_le32 (int *,int*,int) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int crypto4xx_crypt_aes_ccm(struct aead_request *req, bool decrypt)
{
 struct crypto4xx_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct crypto4xx_aead_reqctx *rctx = aead_request_ctx(req);
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 __le32 iv[16];
 u32 tmp_sa[SA_AES128_CCM_LEN + 4];
 struct dynamic_sa_ctl *sa = (struct dynamic_sa_ctl *)tmp_sa;
 unsigned int len = req->cryptlen;

 if (decrypt)
  len -= crypto_aead_authsize(aead);

 if (crypto4xx_aead_need_fallback(req, len, 1, decrypt))
  return crypto4xx_aead_fallback(req, ctx, decrypt);

 memcpy(tmp_sa, decrypt ? ctx->sa_in : ctx->sa_out, ctx->sa_len * 4);
 sa->sa_command_0.bf.digest_len = crypto_aead_authsize(aead) >> 2;

 if (req->iv[0] == 1) {

  sa->sa_command_1.bf.crypto_mode9_8 = 1;
 }

 iv[3] = cpu_to_le32(0);
 crypto4xx_memcpy_to_le32(iv, req->iv, 16 - (req->iv[0] + 1));

 return crypto4xx_build_pd(&req->base, ctx, req->src, req->dst,
      len, iv, sizeof(iv),
      sa, ctx->sa_len, req->assoclen, rctx->dst);
}

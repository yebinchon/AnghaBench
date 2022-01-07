
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int ndigits; int x; } ;
struct ecrdsa_ctx {int digest_len; TYPE_3__* curve; TYPE_2__ pub_key; int digest; } ;
struct ecc_point {int* x; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {int dst_len; int src_len; int src; } ;
typedef int sig ;
typedef int digest ;
struct TYPE_4__ {int ndigits; } ;
struct TYPE_6__ {int* n; TYPE_1__ g; } ;


 int EBADMSG ;
 struct ecc_point ECC_POINT_INIT (int*,int*,unsigned int) ;
 int ECRDSA_MAX_DIGITS ;
 int ECRDSA_MAX_SIG_SIZE ;
 int EKEYREJECTED ;
 int STREEBOG512_DIGEST_SIZE ;
 scalar_t__ WARN_ON (int) ;
 struct ecrdsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int ecc_point_mult_shamir (struct ecc_point*,int*,TYPE_1__*,int*,TYPE_2__*,TYPE_3__*) ;
 int sg_copy_to_buffer (int ,int ,unsigned char*,int) ;
 int sg_nents_for_len (int ,int) ;
 int sg_pcopy_to_buffer (int ,int ,unsigned char*,int,int) ;
 int vli_cmp (int*,int*,unsigned int) ;
 int vli_from_be64 (int*,unsigned char*,unsigned int) ;
 int vli_from_le64 (int*,unsigned char*,unsigned int) ;
 scalar_t__ vli_is_zero (int*,unsigned int) ;
 int vli_mod_inv (int*,int*,int*,unsigned int) ;
 int vli_mod_mult_slow (int*,int*,int*,int*,unsigned int) ;
 int vli_sub (int*,int*,int*,unsigned int) ;

__attribute__((used)) static int ecrdsa_verify(struct akcipher_request *req)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 struct ecrdsa_ctx *ctx = akcipher_tfm_ctx(tfm);
 unsigned char sig[ECRDSA_MAX_SIG_SIZE];
 unsigned char digest[STREEBOG512_DIGEST_SIZE];
 unsigned int ndigits = req->dst_len / sizeof(u64);
 u64 r[ECRDSA_MAX_DIGITS];
 u64 _r[ECRDSA_MAX_DIGITS];
 u64 s[ECRDSA_MAX_DIGITS];
 u64 e[ECRDSA_MAX_DIGITS];
 u64 *v = e;
 u64 z1[ECRDSA_MAX_DIGITS];
 u64 *z2 = _r;
 struct ecc_point cc = ECC_POINT_INIT(s, e, ndigits);






 if (!ctx->curve ||
     !ctx->digest ||
     !req->src ||
     !ctx->pub_key.x ||
     req->dst_len != ctx->digest_len ||
     req->dst_len != ctx->curve->g.ndigits * sizeof(u64) ||
     ctx->pub_key.ndigits != ctx->curve->g.ndigits ||
     req->dst_len * 2 != req->src_len ||
     WARN_ON(req->src_len > sizeof(sig)) ||
     WARN_ON(req->dst_len > sizeof(digest)))
  return -EBADMSG;

 sg_copy_to_buffer(req->src, sg_nents_for_len(req->src, req->src_len),
     sig, req->src_len);
 sg_pcopy_to_buffer(req->src,
      sg_nents_for_len(req->src,
         req->src_len + req->dst_len),
      digest, req->dst_len, req->src_len);

 vli_from_be64(s, sig, ndigits);
 vli_from_be64(r, sig + ndigits * sizeof(u64), ndigits);


 if (vli_is_zero(r, ndigits) ||
     vli_cmp(r, ctx->curve->n, ndigits) == 1 ||
     vli_is_zero(s, ndigits) ||
     vli_cmp(s, ctx->curve->n, ndigits) == 1)
  return -EKEYREJECTED;



 vli_from_le64(e, digest, ndigits);
 if (vli_cmp(e, ctx->curve->n, ndigits) == 1)
  vli_sub(e, e, ctx->curve->n, ndigits);
 if (vli_is_zero(e, ndigits))
  e[0] = 1;


 vli_mod_inv(v, e, ctx->curve->n, ndigits);


 vli_mod_mult_slow(z1, s, v, ctx->curve->n, ndigits);
 vli_sub(_r, ctx->curve->n, r, ndigits);
 vli_mod_mult_slow(z2, _r, v, ctx->curve->n, ndigits);


 ecc_point_mult_shamir(&cc, z1, &ctx->curve->g, z2, &ctx->pub_key,
         ctx->curve);
 if (vli_cmp(cc.x, ctx->curve->n, ndigits) == 1)
  vli_sub(cc.x, cc.x, ctx->curve->n, ndigits);


 if (!vli_cmp(cc.x, r, ndigits))
  return 0;
 else
  return -EKEYREJECTED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ecdh_ctx {unsigned int ndigits; int private_key; int curve_id; } ;
struct ecdh {int key_size; scalar_t__ key; int curve_id; } ;
struct crypto_kpp {int dummy; } ;


 int EINVAL ;
 scalar_t__ crypto_ecdh_decode_key (void const*,unsigned int,struct ecdh*) ;
 int ecc_gen_privkey (int ,unsigned int,int ) ;
 scalar_t__ ecc_is_key_valid (int ,unsigned int,int const*,int ) ;
 struct ecdh_ctx* ecdh_get_ctx (struct crypto_kpp*) ;
 unsigned int ecdh_supported_curve (int ) ;
 int memcpy (int ,scalar_t__,int ) ;

__attribute__((used)) static int ecdh_set_secret(struct crypto_kpp *tfm, const void *buf,
      unsigned int len)
{
 struct ecdh_ctx *ctx = ecdh_get_ctx(tfm);
 struct ecdh params;
 unsigned int ndigits;

 if (crypto_ecdh_decode_key(buf, len, &params) < 0)
  return -EINVAL;

 ndigits = ecdh_supported_curve(params.curve_id);
 if (!ndigits)
  return -EINVAL;

 ctx->curve_id = params.curve_id;
 ctx->ndigits = ndigits;

 if (!params.key || !params.key_size)
  return ecc_gen_privkey(ctx->curve_id, ctx->ndigits,
           ctx->private_key);

 if (ecc_is_key_valid(ctx->curve_id, ctx->ndigits,
        (const u64 *)params.key, params.key_size) < 0)
  return -EINVAL;

 memcpy(ctx->private_key, params.key, params.key_size);

 return 0;
}

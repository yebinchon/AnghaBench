
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct camellia_ctx {int key_length; int key_table; } ;
typedef int __be32 ;


 int be32_to_cpu (int const) ;
 int camellia_do_encrypt (int ,int *,unsigned int) ;
 int cpu_to_be32 (int ) ;
 struct camellia_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void camellia_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 const struct camellia_ctx *cctx = crypto_tfm_ctx(tfm);
 const __be32 *src = (const __be32 *)in;
 __be32 *dst = (__be32 *)out;
 unsigned int max;

 u32 tmp[4];

 tmp[0] = be32_to_cpu(src[0]);
 tmp[1] = be32_to_cpu(src[1]);
 tmp[2] = be32_to_cpu(src[2]);
 tmp[3] = be32_to_cpu(src[3]);

 if (cctx->key_length == 16)
  max = 24;
 else
  max = 32;

 camellia_do_encrypt(cctx->key_table, tmp, max);


 dst[0] = cpu_to_be32(tmp[2]);
 dst[1] = cpu_to_be32(tmp[3]);
 dst[2] = cpu_to_be32(tmp[0]);
 dst[3] = cpu_to_be32(tmp[1]);
}

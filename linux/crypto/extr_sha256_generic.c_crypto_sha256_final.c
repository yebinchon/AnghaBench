
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;


 scalar_t__ SHA224_DIGEST_SIZE ;
 scalar_t__ crypto_shash_digestsize (int ) ;
 int sha224_final (int ,int *) ;
 int sha256_final (int ,int *) ;
 int shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crypto_sha256_final(struct shash_desc *desc, u8 *out)
{
 if (crypto_shash_digestsize(desc->tfm) == SHA224_DIGEST_SIZE)
  return sha224_final(shash_desc_ctx(desc), out);
 else
  return sha256_final(shash_desc_ctx(desc), out);
}

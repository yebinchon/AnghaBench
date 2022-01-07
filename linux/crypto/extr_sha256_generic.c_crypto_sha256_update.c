
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sha256_update (int ,int const*,unsigned int) ;
 int shash_desc_ctx (struct shash_desc*) ;

int crypto_sha256_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 return sha256_update(shash_desc_ctx(desc), data, len);
}

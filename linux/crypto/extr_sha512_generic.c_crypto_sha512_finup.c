
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sha512_base_do_update (struct shash_desc*,int const*,unsigned int,int ) ;
 int sha512_final (struct shash_desc*,int *) ;
 int sha512_generic_block_fn ;

int crypto_sha512_finup(struct shash_desc *desc, const u8 *data,
   unsigned int len, u8 *hash)
{
 sha512_base_do_update(desc, data, len, sha512_generic_block_fn);
 return sha512_final(desc, hash);
}

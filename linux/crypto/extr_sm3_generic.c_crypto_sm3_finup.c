
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sm3_base_do_update (struct shash_desc*,int const*,unsigned int,int ) ;
 int sm3_final (struct shash_desc*,int *) ;
 int sm3_generic_block_fn ;

int crypto_sm3_finup(struct shash_desc *desc, const u8 *data,
   unsigned int len, u8 *hash)
{
 sm3_base_do_update(desc, data, len, sm3_generic_block_fn);
 return sm3_final(desc, hash);
}

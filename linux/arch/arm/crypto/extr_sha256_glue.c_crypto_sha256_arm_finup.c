
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha256_block_fn ;


 int crypto_sha256_arm_final (struct shash_desc*,int *) ;
 int sha256_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha256_block_data_order ;

int crypto_sha256_arm_finup(struct shash_desc *desc, const u8 *data,
       unsigned int len, u8 *out)
{
 sha256_base_do_update(desc, data, len,
         (sha256_block_fn *)sha256_block_data_order);
 return crypto_sha256_arm_final(desc, out);
}

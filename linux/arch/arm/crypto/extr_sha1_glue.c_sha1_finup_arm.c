
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha1_block_fn ;


 int sha1_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ sha1_block_data_order ;
 int sha1_final (struct shash_desc*,int *) ;

int sha1_finup_arm(struct shash_desc *desc, const u8 *data,
     unsigned int len, u8 *out)
{
 sha1_base_do_update(desc, data, len,
       (sha1_block_fn *)sha1_block_data_order);
 return sha1_final(desc, out);
}

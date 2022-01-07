
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha1_block_fn ;


 int sha1_base_do_finalize (struct shash_desc*,int *) ;
 int sha1_base_finish (struct shash_desc*,int *) ;
 scalar_t__ sha1_block_data_order ;

__attribute__((used)) static int sha1_final(struct shash_desc *desc, u8 *out)
{
 sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_block_data_order);
 return sha1_base_finish(desc, out);
}

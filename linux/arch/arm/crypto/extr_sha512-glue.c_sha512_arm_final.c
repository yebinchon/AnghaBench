
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha512_block_fn ;


 int sha512_base_do_finalize (struct shash_desc*,int *) ;
 int sha512_base_finish (struct shash_desc*,int *) ;
 scalar_t__ sha512_block_data_order ;

__attribute__((used)) static int sha512_arm_final(struct shash_desc *desc, u8 *out)
{
 sha512_base_do_finalize(desc,
  (sha512_block_fn *)sha512_block_data_order);
 return sha512_base_finish(desc, out);
}

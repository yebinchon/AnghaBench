
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha512_block_fn ;


 int sha512_base_do_finalize (struct shash_desc*,int *) ;
 int sha512_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 int sha512_base_finish (struct shash_desc*,int *) ;
 scalar_t__ sha512_block_data_order ;

__attribute__((used)) static int sha512_finup(struct shash_desc *desc, const u8 *data,
   unsigned int len, u8 *out)
{
 if (len)
  sha512_base_do_update(desc, data, len,
   (sha512_block_fn *)sha512_block_data_order);
 sha512_base_do_finalize(desc,
   (sha512_block_fn *)sha512_block_data_order);

 return sha512_base_finish(desc, out);
}

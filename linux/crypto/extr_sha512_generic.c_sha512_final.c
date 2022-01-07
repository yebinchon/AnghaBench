
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sha512_base_do_finalize (struct shash_desc*,int ) ;
 int sha512_base_finish (struct shash_desc*,int *) ;
 int sha512_generic_block_fn ;

__attribute__((used)) static int sha512_final(struct shash_desc *desc, u8 *hash)
{
 sha512_base_do_finalize(desc, sha512_generic_block_fn);
 return sha512_base_finish(desc, hash);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sm3_base_do_finalize (struct shash_desc*,int ) ;
 int sm3_base_finish (struct shash_desc*,int *) ;
 int sm3_generic_block_fn ;

__attribute__((used)) static int sm3_final(struct shash_desc *desc, u8 *out)
{
 sm3_base_do_finalize(desc, sm3_generic_block_fn);
 return sm3_base_finish(desc, out);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sm3_state {int dummy; } ;


 int SM3_BLOCK_SIZE ;
 int sm3_transform (struct sm3_state*,int const*) ;

__attribute__((used)) static void sm3_generic_block_fn(struct sm3_state *sst, u8 const *src,
        int blocks)
{
 while (blocks--) {
  sm3_transform(sst, src);
  src += SM3_BLOCK_SIZE;
 }
}

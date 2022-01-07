
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha512_state {int state; } ;


 int SHA512_BLOCK_SIZE ;
 int sha512_transform (int ,int const*) ;

__attribute__((used)) static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
        int blocks)
{
 while (blocks--) {
  sha512_transform(sst->state, src);
  src += SHA512_BLOCK_SIZE;
 }
}

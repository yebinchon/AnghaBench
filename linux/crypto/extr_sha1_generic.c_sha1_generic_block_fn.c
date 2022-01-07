
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int temp ;
struct sha1_state {int state; } ;


 int SHA1_BLOCK_SIZE ;
 int SHA_WORKSPACE_WORDS ;
 int memzero_explicit (int *,int) ;
 int sha_transform (int ,int const*,int *) ;

__attribute__((used)) static void sha1_generic_block_fn(struct sha1_state *sst, u8 const *src,
      int blocks)
{
 u32 temp[SHA_WORKSPACE_WORDS];

 while (blocks--) {
  sha_transform(sst->state, src, temp);
  src += SHA1_BLOCK_SIZE;
 }
 memzero_explicit(temp, sizeof(temp));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sha1_state {int * state; } ;
struct TYPE_2__ {int member_0; } ;


 int memzero_explicit (int *,int) ;
 int write_octeon_64bit_hash_dword (int ,int) ;

__attribute__((used)) static void octeon_sha1_store_hash(struct sha1_state *sctx)
{
 u64 *hash = (u64 *)sctx->state;
 union {
  u32 word[2];
  u64 dword;
 } hash_tail = { { sctx->state[4], } };

 write_octeon_64bit_hash_dword(hash[0], 0);
 write_octeon_64bit_hash_dword(hash[1], 1);
 write_octeon_64bit_hash_dword(hash_tail.dword, 2);
 memzero_explicit(&hash_tail.word[0], sizeof(hash_tail.word[0]));
}

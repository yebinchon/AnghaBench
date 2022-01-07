
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sha256_state {scalar_t__ state; } ;


 int write_octeon_64bit_hash_dword (int ,int) ;

__attribute__((used)) static void octeon_sha256_store_hash(struct sha256_state *sctx)
{
 u64 *hash = (u64 *)sctx->state;

 write_octeon_64bit_hash_dword(hash[0], 0);
 write_octeon_64bit_hash_dword(hash[1], 1);
 write_octeon_64bit_hash_dword(hash[2], 2);
 write_octeon_64bit_hash_dword(hash[3], 3);
}

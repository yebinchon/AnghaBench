
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct md5_state {scalar_t__ hash; } ;


 int read_octeon_64bit_hash_dword (int) ;

__attribute__((used)) static void octeon_md5_read_hash(struct md5_state *ctx)
{
 u64 *hash = (u64 *)ctx->hash;

 hash[0] = read_octeon_64bit_hash_dword(0);
 hash[1] = read_octeon_64bit_hash_dword(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha512_state {void** state; } ;


 void* read_octeon_64bit_hash_sha512 (int) ;

__attribute__((used)) static void octeon_sha512_read_hash(struct sha512_state *sctx)
{
 sctx->state[0] = read_octeon_64bit_hash_sha512(0);
 sctx->state[1] = read_octeon_64bit_hash_sha512(1);
 sctx->state[2] = read_octeon_64bit_hash_sha512(2);
 sctx->state[3] = read_octeon_64bit_hash_sha512(3);
 sctx->state[4] = read_octeon_64bit_hash_sha512(4);
 sctx->state[5] = read_octeon_64bit_hash_sha512(5);
 sctx->state[6] = read_octeon_64bit_hash_sha512(6);
 sctx->state[7] = read_octeon_64bit_hash_sha512(7);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha512_state {int * state; } ;


 int write_octeon_64bit_hash_sha512 (int ,int) ;

__attribute__((used)) static void octeon_sha512_store_hash(struct sha512_state *sctx)
{
 write_octeon_64bit_hash_sha512(sctx->state[0], 0);
 write_octeon_64bit_hash_sha512(sctx->state[1], 1);
 write_octeon_64bit_hash_sha512(sctx->state[2], 2);
 write_octeon_64bit_hash_sha512(sctx->state[3], 3);
 write_octeon_64bit_hash_sha512(sctx->state[4], 4);
 write_octeon_64bit_hash_sha512(sctx->state[5], 5);
 write_octeon_64bit_hash_sha512(sctx->state[6], 6);
 write_octeon_64bit_hash_sha512(sctx->state[7], 7);
}

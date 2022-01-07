
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ crypto_hash_sha256_state ;


 int SHA256_Pad (TYPE_1__*,int *) ;
 int be32enc_vect (unsigned char*,int ,int) ;
 int sodium_memzero (void*,int) ;

int
crypto_hash_sha256_final(crypto_hash_sha256_state *state, unsigned char *out)
{
    uint32_t tmp32[64 + 8];

    SHA256_Pad(state, tmp32);
    be32enc_vect(out, state->state, 32);
    sodium_memzero((void *) tmp32, sizeof tmp32);
    sodium_memzero((void *) state, sizeof *state);

    return 0;
}

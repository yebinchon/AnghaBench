
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ crypto_hash_sha512_state ;


 int SHA512_Pad (TYPE_1__*,int *) ;
 int be64enc_vect (unsigned char*,int ,int) ;
 int sodium_memzero (void*,int) ;

int
crypto_hash_sha512_final(crypto_hash_sha512_state *state, unsigned char *out)
{
    uint64_t tmp64[80 + 8];

    SHA512_Pad(state, tmp64);
    be64enc_vect(out, state->state, 64);
    sodium_memzero((void *) tmp64, sizeof tmp64);
    sodium_memzero((void *) state, sizeof *state);

    return 0;
}

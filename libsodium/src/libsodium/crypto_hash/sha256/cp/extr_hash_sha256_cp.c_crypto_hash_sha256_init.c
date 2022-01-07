
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int state; scalar_t__ count; } ;
typedef TYPE_1__ crypto_hash_sha256_state ;


 int memcpy (int ,int const*,int) ;

int
crypto_hash_sha256_init(crypto_hash_sha256_state *state)
{
    static const uint32_t sha256_initial_state[8] = { 0x6a09e667, 0xbb67ae85,
                                                      0x3c6ef372, 0xa54ff53a,
                                                      0x510e527f, 0x9b05688c,
                                                      0x1f83d9ab, 0x5be0cd19 };

    state->count = (uint64_t) 0U;
    memcpy(state->state, sha256_initial_state, sizeof sha256_initial_state);

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ictx; } ;
typedef TYPE_1__ crypto_auth_hmacsha512_state ;


 int crypto_hash_sha512_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_auth_hmacsha512_update(crypto_auth_hmacsha512_state *state,
                              const unsigned char *in, unsigned long long inlen)
{
    crypto_hash_sha512_update(&state->ictx, in, inlen);

    return 0;
}

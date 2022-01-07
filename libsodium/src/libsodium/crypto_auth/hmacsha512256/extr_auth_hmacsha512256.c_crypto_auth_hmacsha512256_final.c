
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_auth_hmacsha512_state ;
typedef int crypto_auth_hmacsha512256_state ;


 int crypto_auth_hmacsha512_final (int *,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

int
crypto_auth_hmacsha512256_final(crypto_auth_hmacsha512256_state *state,
                                unsigned char *out)
{
    unsigned char out0[64];

    crypto_auth_hmacsha512_final((crypto_auth_hmacsha512_state *) state, out0);
    memcpy(out, out0, 32);

    return 0;
}

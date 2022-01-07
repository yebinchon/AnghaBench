
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_auth_hmacsha512_state ;
typedef int crypto_auth_hmacsha512256_state ;


 int crypto_auth_hmacsha512_init (int *,unsigned char const*,size_t) ;

int
crypto_auth_hmacsha512256_init(crypto_auth_hmacsha512256_state *state,
                               const unsigned char *key, size_t keylen)
{
    return crypto_auth_hmacsha512_init((crypto_auth_hmacsha512_state *) state,
                                       key, keylen);
}

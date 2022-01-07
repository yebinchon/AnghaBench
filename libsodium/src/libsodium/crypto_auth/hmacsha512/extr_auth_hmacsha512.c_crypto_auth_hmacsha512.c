
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_auth_hmacsha512_state ;


 int crypto_auth_hmacsha512_KEYBYTES ;
 int crypto_auth_hmacsha512_final (int *,unsigned char*) ;
 int crypto_auth_hmacsha512_init (int *,unsigned char const*,int ) ;
 int crypto_auth_hmacsha512_update (int *,unsigned char const*,unsigned long long) ;

int
crypto_auth_hmacsha512(unsigned char *out, const unsigned char *in,
                       unsigned long long inlen, const unsigned char *k)
{
    crypto_auth_hmacsha512_state state;

    crypto_auth_hmacsha512_init(&state, k, crypto_auth_hmacsha512_KEYBYTES);
    crypto_auth_hmacsha512_update(&state, in, inlen);
    crypto_auth_hmacsha512_final(&state, out);

    return 0;
}

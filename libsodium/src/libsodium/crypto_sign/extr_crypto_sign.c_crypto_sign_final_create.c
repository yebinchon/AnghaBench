
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_sign_state ;


 int crypto_sign_ed25519ph_final_create (int *,unsigned char*,unsigned long long*,unsigned char const*) ;

int
crypto_sign_final_create(crypto_sign_state *state, unsigned char *sig,
                         unsigned long long *siglen_p, const unsigned char *sk)
{
    return crypto_sign_ed25519ph_final_create(state, sig, siglen_p, sk);
}

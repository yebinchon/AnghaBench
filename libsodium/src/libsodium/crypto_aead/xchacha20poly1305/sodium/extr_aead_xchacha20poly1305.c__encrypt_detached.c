
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned char crypto_onetimeauth_poly1305_state ;


 int STORE64_LE (unsigned char*,int ) ;
 unsigned char* _pad0 ;
 unsigned long long crypto_aead_chacha20poly1305_ietf_ABYTES ;
 int crypto_onetimeauth_poly1305_final (unsigned char*,unsigned char*) ;
 int crypto_onetimeauth_poly1305_init (unsigned char*,unsigned char*) ;
 int crypto_onetimeauth_poly1305_update (unsigned char*,unsigned char const*,int) ;
 int crypto_stream_chacha20_ietf_ext (unsigned char*,int,unsigned char const*,unsigned char const*) ;
 int crypto_stream_chacha20_ietf_ext_xor_ic (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char const*) ;
 int sodium_memzero (unsigned char*,int) ;

__attribute__((used)) static int
_encrypt_detached(unsigned char *c,
                  unsigned char *mac,
                  unsigned long long *maclen_p,
                  const unsigned char *m,
                  unsigned long long mlen,
                  const unsigned char *ad,
                  unsigned long long adlen,
                  const unsigned char *nsec,
                  const unsigned char *npub,
                  const unsigned char *k)
{
    crypto_onetimeauth_poly1305_state state;
    unsigned char block0[64U];
    unsigned char slen[8U];

    (void) nsec;
    crypto_stream_chacha20_ietf_ext(block0, sizeof block0, npub, k);
    crypto_onetimeauth_poly1305_init(&state, block0);
    sodium_memzero(block0, sizeof block0);

    crypto_onetimeauth_poly1305_update(&state, ad, adlen);
    crypto_onetimeauth_poly1305_update(&state, _pad0, (0x10 - adlen) & 0xf);

    crypto_stream_chacha20_ietf_ext_xor_ic(c, m, mlen, npub, 1U, k);

    crypto_onetimeauth_poly1305_update(&state, c, mlen);
    crypto_onetimeauth_poly1305_update(&state, _pad0, (0x10 - mlen) & 0xf);

    STORE64_LE(slen, (uint64_t) adlen);
    crypto_onetimeauth_poly1305_update(&state, slen, sizeof slen);

    STORE64_LE(slen, (uint64_t) mlen);
    crypto_onetimeauth_poly1305_update(&state, slen, sizeof slen);

    crypto_onetimeauth_poly1305_final(&state, mac);
    sodium_memzero(&state, sizeof state);

    if (maclen_p != ((void*)0)) {
        *maclen_p = crypto_aead_chacha20poly1305_ietf_ABYTES;
    }
    return 0;
}

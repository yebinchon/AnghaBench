
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chacha_ctx {int dummy; } ;


 int COMPILER_ASSERT (int) ;
 int chacha20_encrypt_bytes (struct chacha_ctx*,unsigned char*,unsigned char*,unsigned long long) ;
 int chacha_ietf_ivsetup (struct chacha_ctx*,unsigned char const*,int *) ;
 int chacha_keysetup (struct chacha_ctx*,unsigned char const*) ;
 int crypto_stream_chacha20_KEYBYTES ;
 int memset (unsigned char*,int ,unsigned long long) ;
 int sodium_memzero (struct chacha_ctx*,int) ;

__attribute__((used)) static int
stream_ietf_ext_ref(unsigned char *c, unsigned long long clen,
                    const unsigned char *n, const unsigned char *k)
{
    struct chacha_ctx ctx;

    if (!clen) {
        return 0;
    }
    COMPILER_ASSERT(crypto_stream_chacha20_KEYBYTES == 256 / 8);
    chacha_keysetup(&ctx, k);
    chacha_ietf_ivsetup(&ctx, n, ((void*)0));
    memset(c, 0, clen);
    chacha20_encrypt_bytes(&ctx, c, c, clen);
    sodium_memzero(&ctx, sizeof ctx);

    return 0;
}

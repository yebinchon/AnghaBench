
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXLEN ;
 int assert (int) ;
 int crypto_shorthash_siphash24_BYTES ;
 int crypto_shorthash_siphash24_KEYBYTES ;
 int crypto_shorthash_siphashx24 (unsigned char*,unsigned char*,unsigned long long,unsigned char*) ;
 int crypto_shorthash_siphashx24_BYTES ;
 int crypto_shorthash_siphashx24_KEYBYTES ;
 int crypto_shorthash_siphashx24_bytes () ;
 int crypto_shorthash_siphashx24_keybytes () ;
 int printf (char*,...) ;

int
main(void)
{
    unsigned char in[MAXLEN];
    unsigned char out[crypto_shorthash_siphashx24_BYTES];
    unsigned char k[crypto_shorthash_siphashx24_KEYBYTES];
    size_t i;
    size_t j;

    for (i = 0; i < crypto_shorthash_siphashx24_KEYBYTES; ++i) {
        k[i] = (unsigned char) i;
    }
    for (i = 0; i < MAXLEN; ++i) {
        in[i] = (unsigned char) i;
        crypto_shorthash_siphashx24(out, in, (unsigned long long) i, k);
        for (j = 0; j < crypto_shorthash_siphashx24_BYTES; ++j) {
            printf("%02x", (unsigned int) out[j]);
        }
        printf("\n");
    }
    assert(crypto_shorthash_siphashx24_KEYBYTES >= crypto_shorthash_siphash24_KEYBYTES);
    assert(crypto_shorthash_siphashx24_BYTES > crypto_shorthash_siphash24_BYTES);
    assert(crypto_shorthash_siphashx24_bytes() == crypto_shorthash_siphashx24_BYTES);
    assert(crypto_shorthash_siphashx24_keybytes() == crypto_shorthash_siphashx24_KEYBYTES);

    return 0;
}

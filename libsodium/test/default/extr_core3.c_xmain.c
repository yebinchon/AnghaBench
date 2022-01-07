
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C ;
 int NONCESUFFIX ;
 int SECONDKEY ;
 int assert (int) ;
 int crypto_core_salsa20 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ;
 int crypto_core_salsa2012 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ;
 int crypto_core_salsa208 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ;
 scalar_t__ crypto_core_salsa20_CONSTBYTES ;
 scalar_t__ crypto_core_salsa20_INPUTBYTES ;
 scalar_t__ crypto_core_salsa20_KEYBYTES ;
 scalar_t__ crypto_core_salsa20_OUTPUTBYTES ;
 scalar_t__ crypto_core_salsa20_constbytes () ;
 scalar_t__ crypto_core_salsa20_inputbytes () ;
 scalar_t__ crypto_core_salsa20_keybytes () ;
 scalar_t__ crypto_core_salsa20_outputbytes () ;
 int crypto_hash_sha256 (unsigned char*,unsigned char*,size_t) ;
 int memcpy (unsigned char*,int ,int) ;
 int printf (char*,...) ;
 int sodium_free (unsigned char*) ;
 scalar_t__ sodium_malloc (int) ;

int
main(void)
{
    unsigned char *secondkey;
    unsigned char *c;
    unsigned char *noncesuffix;
    unsigned char *in;
    unsigned char *output;
    unsigned char *h;
    size_t output_len = 64 * 256 * 256;
    size_t pos = 0;
    int i;

    pos = 0;
    secondkey = (unsigned char *) sodium_malloc(32);
    memcpy(secondkey, SECONDKEY, 32);
    noncesuffix = (unsigned char *) sodium_malloc(8);
    memcpy(noncesuffix, NONCESUFFIX, 8);
    c = (unsigned char *) sodium_malloc(16);
    memcpy(c, C, 16);
    in = (unsigned char *) sodium_malloc(16);
    output = (unsigned char *) sodium_malloc(output_len);
    h = (unsigned char *) sodium_malloc(32);

    for (i = 0; i < 8; i++) {
        in[i] = noncesuffix[i];
    }
    for (; i < 16; i++) {
        in[i] = 0;
    }
    do {
        do {
            crypto_core_salsa20(output + pos, in, secondkey, c);
            pos += 64;
            in[8]++;
        } while (in[8] != 0);
        in[9]++;
    } while (in[9] != 0);

    crypto_hash_sha256(h, output, output_len);

    for (i = 0; i < 32; ++i) {
        printf("%02x", h[i]);
    }
    printf("\n");


    pos = 0;
    do {
        do {
            crypto_core_salsa2012(output + pos, in, secondkey, c);
            pos += 64;
            in[8]++;
        } while (in[8] != 0);
        in[9]++;
    } while (in[9] != 0);

    crypto_hash_sha256(h, output, output_len);

    for (i = 0; i < 32; ++i) {
        printf("%02x", h[i]);
    }
    printf("\n");

    pos = 0;
    do {
        do {
            crypto_core_salsa208(output + pos, in, secondkey, c);
            pos += 64;
            in[8]++;
        } while (in[8] != 0);
        in[9]++;
    } while (in[9] != 0);

    crypto_hash_sha256(h, output, output_len);

    for (i = 0; i < 32; ++i) {
        printf("%02x", h[i]);
    }
    printf("\n");





    sodium_free(h);
    sodium_free(output);
    sodium_free(in);
    sodium_free(c);
    sodium_free(noncesuffix);
    sodium_free(secondkey);

    assert(crypto_core_salsa20_outputbytes() == crypto_core_salsa20_OUTPUTBYTES);
    assert(crypto_core_salsa20_inputbytes() == crypto_core_salsa20_INPUTBYTES);
    assert(crypto_core_salsa20_keybytes() == crypto_core_salsa20_KEYBYTES);
    assert(crypto_core_salsa20_constbytes() == crypto_core_salsa20_CONSTBYTES);

    return 0;
}

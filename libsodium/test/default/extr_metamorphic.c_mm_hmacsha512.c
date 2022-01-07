
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int crypto_auth_hmacsha512_state ;


 int MAXLEN ;
 int MAX_ITER ;
 int assert (int) ;
 int crypto_auth_hmacsha512 (unsigned char*,unsigned char*,size_t,unsigned char*) ;
 size_t crypto_auth_hmacsha512_BYTES ;
 size_t crypto_auth_hmacsha512_KEYBYTES ;
 int crypto_auth_hmacsha512_final (int *,unsigned char*) ;
 int crypto_auth_hmacsha512_init (int *,unsigned char*,size_t) ;
 int crypto_auth_hmacsha512_keygen (unsigned char*) ;
 int crypto_auth_hmacsha512_update (int *,unsigned char*,size_t) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,size_t) ;
 int randombytes_buf (unsigned char*,size_t) ;
 size_t randombytes_uniform (int ) ;
 int sodium_free (unsigned char*) ;
 scalar_t__ sodium_malloc (size_t) ;

__attribute__((used)) static void
mm_hmacsha512(void)
{
    crypto_auth_hmacsha512_state st;
    unsigned char *h, *h2;
    unsigned char *k;
    unsigned char *m;
    size_t mlen;
    size_t l1, l2;
    int i;

    for (i = 0; i < MAX_ITER; i++) {
        mlen = randombytes_uniform(MAXLEN);
        m = (unsigned char *) sodium_malloc(mlen);
        k = (unsigned char *) sodium_malloc(crypto_auth_hmacsha512_KEYBYTES);
        h = (unsigned char *) sodium_malloc(crypto_auth_hmacsha512_BYTES);
        h2 = (unsigned char *) sodium_malloc(crypto_auth_hmacsha512_BYTES);

        crypto_auth_hmacsha512_keygen(k);
        randombytes_buf(m, mlen);

        crypto_auth_hmacsha512_init(&st, k, crypto_auth_hmacsha512_KEYBYTES);
        l1 = randombytes_uniform((uint32_t) mlen);
        l2 = randombytes_uniform((uint32_t) (mlen - l1));
        crypto_auth_hmacsha512_update(&st, m, l1);
        crypto_auth_hmacsha512_update(&st, m + l1, l2);
        crypto_auth_hmacsha512_update(&st, m + l1 + l2, mlen - l1 - l2);
        crypto_auth_hmacsha512_final(&st, h);

        crypto_auth_hmacsha512(h2, m, mlen, k);

        assert(memcmp(h, h2, crypto_auth_hmacsha512_BYTES) == 0);

        sodium_free(h2);
        sodium_free(h);
        sodium_free(k);
        sodium_free(m);
    }
}

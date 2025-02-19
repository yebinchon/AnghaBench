
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alicepk ;
 int alicesk ;
 int assert (int) ;
 int bobpk ;
 int bobsk ;
 int crypto_box (unsigned char*,unsigned char*,size_t,unsigned char*,int ,int ) ;
 size_t crypto_box_NONCEBYTES ;
 size_t crypto_box_ZEROBYTES ;
 int crypto_box_keypair (int ,int ) ;
 scalar_t__ crypto_box_open (unsigned char*,unsigned char*,size_t,unsigned char*,int ,int ) ;
 int memset (unsigned char*,int ,size_t) ;
 unsigned char* n ;
 int printf (char*) ;
 int randombytes_buf (unsigned char*,size_t) ;
 int sodium_free (unsigned char*) ;
 scalar_t__ sodium_malloc (size_t) ;

int
main(void)
{
    unsigned char *m;
    unsigned char *c;
    unsigned char *m2;
    size_t mlen;
    size_t mlen_max = 1000;
    size_t i;
    int ret;

    m = (unsigned char *) sodium_malloc(mlen_max);
    c = (unsigned char *) sodium_malloc(mlen_max);
    m2 = (unsigned char *) sodium_malloc(mlen_max);
    memset(m, 0, crypto_box_ZEROBYTES);
    crypto_box_keypair(alicepk, alicesk);
    crypto_box_keypair(bobpk, bobsk);
    for (mlen = 0; mlen + crypto_box_ZEROBYTES <= mlen_max; mlen++) {
        randombytes_buf(n, crypto_box_NONCEBYTES);
        randombytes_buf(m + crypto_box_ZEROBYTES, mlen);
        ret = crypto_box(c, m, mlen + crypto_box_ZEROBYTES, n, bobpk, alicesk);
        assert(ret == 0);
        if (crypto_box_open(m2, c, mlen + crypto_box_ZEROBYTES, n, alicepk,
                            bobsk) == 0) {
            for (i = 0; i < mlen + crypto_box_ZEROBYTES; ++i) {
                if (m2[i] != m[i]) {
                    printf("bad decryption\n");
                    break;
                }
            }
        } else {
            printf("ciphertext fails verification\n");
        }
    }
    sodium_free(m);
    sodium_free(c);
    sodium_free(m2);

    return 0;
}

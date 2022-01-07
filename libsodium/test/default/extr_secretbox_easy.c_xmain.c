
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int crypto_secretbox_MACBYTES ;
 int crypto_secretbox_detached (unsigned char*,unsigned char*,unsigned char*,int,int ,int ) ;
 scalar_t__ crypto_secretbox_easy (unsigned char*,unsigned char*,int,int ,int ) ;
 int crypto_secretbox_open_easy (unsigned char*,unsigned char*,int,int ,int ) ;
 int firstkey ;
 unsigned char* m ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int nonce ;
 int printf (char*,...) ;
 size_t randombytes_uniform (int) ;
 int sodium_free (unsigned char*) ;
 scalar_t__ sodium_malloc (int) ;

int
main(void)
{
    unsigned char *c;
    unsigned char *mac;
    size_t i;

    c = (unsigned char *) sodium_malloc(131 + crypto_secretbox_MACBYTES + 1);
    mac = (unsigned char *) sodium_malloc(crypto_secretbox_MACBYTES);
    assert(c != ((void*)0) && mac != ((void*)0));

    crypto_secretbox_easy(c, m, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");

    crypto_secretbox_detached(c, mac, m, 131, nonce, firstkey);
    for (i = 0; i < crypto_secretbox_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) mac[i]);
    }
    for (i = 0; i < 131; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");



    memcpy(c + 1, m, 131);
    crypto_secretbox_easy(c, c + 1, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");

    memcpy(c, m, 131);
    crypto_secretbox_easy(c + 1, c, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i + 1]);
    }
    printf("\n");

    memcpy(c, m, 131);
    crypto_secretbox_easy(c, c, 131, nonce, firstkey);
    for (i = 0; i < 131 + crypto_secretbox_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");

    assert(crypto_secretbox_easy(c, m, 0, nonce, firstkey) == 0);



    crypto_secretbox_easy(c, c, 0, nonce, firstkey);
    for (i = 0; i < crypto_secretbox_MACBYTES + 1; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");
    if (crypto_secretbox_open_easy(c, c, crypto_secretbox_MACBYTES, nonce,
                                   firstkey) != 0) {
        printf("Null crypto_secretbox_open_easy() failed\n");
    }
    for (i = 0; i < crypto_secretbox_MACBYTES + 1; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");
    c[randombytes_uniform(crypto_secretbox_MACBYTES)]++;
    if (crypto_secretbox_open_easy(c, c, crypto_secretbox_MACBYTES, nonce,
                                   firstkey) != -1) {
        printf("Null tampered crypto_secretbox_open_easy() failed\n");
    }



    memset(c, 0, 131 + crypto_secretbox_MACBYTES + 1);
    memcpy(c, m, 20);
    crypto_secretbox_easy(c, c + 10, 10, nonce, firstkey);
    for (i = 0; i < 10 + crypto_secretbox_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");

    memset(c, 0, 131 + crypto_secretbox_MACBYTES + 1);
    memcpy(c, m, 20);
    crypto_secretbox_easy(c + 10, c, 10, nonce, firstkey);
    for (i = 0; i < 10 + crypto_secretbox_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");

    sodium_free(mac);
    sodium_free(c);

    return 0;
}

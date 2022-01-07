
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alicesk ;
 int assert (int) ;
 int bobpk ;
 scalar_t__* c ;
 int crypto_box_MACBYTES ;
 int crypto_box_easy (scalar_t__*,int ,int,int ,int ,int ) ;
 int crypto_box_open_easy (scalar_t__*,scalar_t__*,int,int ,int ,int ) ;
 int guard_page ;
 int m ;
 int nonce ;
 int printf (char*,...) ;
 size_t randombytes_uniform (int) ;

int
main(void)
{
    size_t i;
    int ret;

    ret = crypto_box_easy(c, m, 131, nonce, bobpk, alicesk);
    assert(ret == 0);
    for (i = 0; i < 131 + crypto_box_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");



    ret = crypto_box_easy(c, guard_page, 0, nonce, bobpk, alicesk);
    assert(ret == 0);
    for (i = 0; i < 1 + crypto_box_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");

    ret =
        crypto_box_open_easy(c, c, crypto_box_MACBYTES, nonce, bobpk, alicesk);
    assert(ret == 0);
    for (i = 0; i < 1 + crypto_box_MACBYTES; ++i) {
        printf(",0x%02x", (unsigned int) c[i]);
    }
    printf("\n");
    c[randombytes_uniform(crypto_box_MACBYTES)]++;
    ret = crypto_box_open_easy(c, c, crypto_box_MACBYTES, nonce, bobpk, alicesk);
    assert(ret == -1);

    return 0;
}

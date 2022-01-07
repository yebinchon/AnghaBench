
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alicepk ;
 int assert (int) ;
 int bobsk ;
 int c ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_beforenm (unsigned char*,int ,int ) ;
 int crypto_box_open (scalar_t__*,int ,int,int ,int ,int ) ;
 scalar_t__ crypto_box_open_afternm (scalar_t__*,int ,int,int ,unsigned char*) ;
 scalar_t__* m ;
 int memset (scalar_t__*,int ,int) ;
 int nonce ;
 int printf (char*,...) ;
 int small_order_p ;

int
main(void)
{
    unsigned char k[crypto_box_BEFORENMBYTES];
    int i;
    int ret;

    if (crypto_box_open(m, c, 163, nonce, alicepk, bobsk) == 0) {
        for (i = 32; i < 163; ++i) {
            printf(",0x%02x", (unsigned int) m[i]);
            if (i % 8 == 7)
                printf("\n");
        }
        printf("\n");
    }
    ret = crypto_box_open(m, c, 163, nonce, small_order_p, bobsk);
    assert(ret == -1);

    memset(m, 0, sizeof m);
    ret = crypto_box_beforenm(k, small_order_p, bobsk);
    assert(ret == -1);
    ret = crypto_box_beforenm(k, alicepk, bobsk);
    assert(ret == 0);
    if (crypto_box_open_afternm(m, c, 163, nonce, k) == 0) {
        for (i = 32; i < 163; ++i) {
            printf(",0x%02x", (unsigned int) m[i]);
            if (i % 8 == 7)
                printf("\n");
        }
        printf("\n");
    }
    return 0;
}

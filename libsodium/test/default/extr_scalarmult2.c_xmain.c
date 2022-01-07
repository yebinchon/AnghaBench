
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* bobpk ;
 int bobsk ;
 int crypto_scalarmult_base (scalar_t__*,int ) ;
 int printf (char*,...) ;

int
main(void)
{
    int i;

    crypto_scalarmult_base(bobpk, bobsk);

    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            printf(",");
        } else {
            printf(" ");
        }
        printf("0x%02x", (unsigned int) bobpk[i]);
        if (i % 8 == 7) {
            printf("\n");
        }
    }
    return 0;
}

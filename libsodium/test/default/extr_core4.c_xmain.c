
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c ;
 int crypto_core_salsa20 (scalar_t__*,int ,int ,int ) ;
 int in ;
 int k ;
 scalar_t__* out ;
 int printf (char*,...) ;

int
main(void)
{
    int i;

    crypto_core_salsa20(out, in, k, c);
    for (i = 0; i < 64; ++i) {
        if (i > 0) {
            printf(",");
        } else {
            printf(" ");
        }
        printf("%3u", (unsigned int) out[i]);
        if (i % 8 == 7) {
            printf("\n");
        }
    }
    return 0;
}

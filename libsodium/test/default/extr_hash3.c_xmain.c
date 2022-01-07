
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_hash (scalar_t__*,int ,int) ;
 size_t crypto_hash_BYTES ;
 scalar_t__* h ;
 int printf (char*,...) ;
 int x ;

int
main(void)
{
    size_t i;

    crypto_hash(h, x, sizeof x - 1U);
    for (i = 0; i < crypto_hash_BYTES; ++i) {
        printf("%02x", (unsigned int) h[i]);
    }
    printf("\n");

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* outcome; int shared_hex; int pk_hex; int sk_hex; } ;


 int crypto_scalarmult (unsigned char*,unsigned char*,unsigned char*) ;
 int crypto_scalarmult_BYTES ;
 int crypto_scalarmult_SCALARBYTES ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int printf (char*,...) ;
 int randombytes_buf (unsigned char*,int) ;
 int sodium_hex2bin (unsigned char*,int,int ,int,int *,int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_1__* test_data ;

int
main(void)
{
    unsigned char sk[crypto_scalarmult_SCALARBYTES];
    unsigned char pk[crypto_scalarmult_BYTES];
    unsigned char shared[crypto_scalarmult_BYTES];
    unsigned char shared2[crypto_scalarmult_BYTES];
    unsigned int i;
    int res;

    for (i = 0U; i < (sizeof test_data) / (sizeof test_data[0]); i++) {
        sodium_hex2bin(sk, crypto_scalarmult_SCALARBYTES, test_data[i].sk_hex,
                       crypto_scalarmult_SCALARBYTES * 2, ((void*)0), ((void*)0), ((void*)0));
        sodium_hex2bin(pk, crypto_scalarmult_BYTES, test_data[i].pk_hex,
                       crypto_scalarmult_BYTES * 2, ((void*)0), ((void*)0), ((void*)0));
        sodium_hex2bin(shared, crypto_scalarmult_BYTES, test_data[i].shared_hex,
                       crypto_scalarmult_BYTES * 2, ((void*)0), ((void*)0), ((void*)0));
        randombytes_buf(shared2, crypto_scalarmult_BYTES);
        res = crypto_scalarmult(shared2, sk, pk);
        if (res == 0) {
            if (strcmp(test_data[i].outcome, "acceptable") == 0) {
                printf("test case %u succeeded (%s)\n", i,
                       test_data[i].outcome);
            } else if (strcmp(test_data[i].outcome, "valid") != 0) {
                printf("*** test case %u succeeded, was supposed to be %s\n", i,
                       test_data[i].outcome);
            }
            if (memcmp(shared, shared2, crypto_scalarmult_BYTES) != 0) {
                printf("*** test case %u succeeded, but shared key is not %s\n",
                       i, test_data[i].outcome);
            }
        } else {
            if (strcmp(test_data[i].outcome, "acceptable") == 0) {
                printf("test case %u failed (%s)\n", i, test_data[i].outcome);
            } else if (strcmp(test_data[i].outcome, "valid") == 0) {
                printf("*** test case %u failed, was supposed to be %s\n", i,
                       test_data[i].outcome);
            }
        }
    }
    printf("OK\n");

    return 0;
}

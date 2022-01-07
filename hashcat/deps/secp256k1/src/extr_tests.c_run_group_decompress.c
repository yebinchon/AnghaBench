
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_fe ;


 int count ;
 int random_fe_test (int *) ;
 int test_group_decompress (int *) ;

void run_group_decompress(void) {
    int i;
    for (i = 0; i < count * 4; i++) {
        secp256k1_fe fe;
        random_fe_test(&fe);
        test_group_decompress(&fe);
    }
}

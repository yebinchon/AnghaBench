
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int) ;
 int WNAF_SIZE (int) ;

void test_fixed_wnaf_small_helper(int *wnaf, int *wnaf_expected, int w) {
    int i;
    for (i = WNAF_SIZE(w)-1; i >= 8; --i) {
        CHECK(wnaf[i] == 0);
    }
    for (i = 7; i >= 0; --i) {
        CHECK(wnaf[i] == wnaf_expected[i]);
    }
}

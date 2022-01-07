
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count ;
 int test_add_neg_y_diff_x () ;
 int test_ge () ;

void run_ge(void) {
    int i;
    for (i = 0; i < count * 32; i++) {
        test_ge();
    }
    test_add_neg_y_diff_x();
}

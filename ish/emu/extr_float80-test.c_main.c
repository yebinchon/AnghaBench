
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,double,double) ;
 int test_compare () ;
 int test_double_convert () ;
 int test_int_convert () ;
 int test_math () ;
 int tests_passed ;
 double tests_total ;

int main() {
    test_int_convert();
    test_double_convert();
    test_math();
    test_compare();
    printf("%d/%d passed (%.0f%%)", tests_passed, tests_total, (double) tests_passed / tests_total * 100);
    return tests_passed == tests_total ? 0 : 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_sorted (int*,int ) ;
 int cmp_int ;

void test_core_qsort__array_with_equal_entries(void)
{
 int a[] = { 4, 4, 4, 4 };
 assert_sorted(a, cmp_int);
}

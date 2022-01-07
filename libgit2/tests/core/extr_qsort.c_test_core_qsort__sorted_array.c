
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_sorted (int*,int ) ;
 int cmp_int ;

void test_core_qsort__sorted_array(void)
{
 int a[] = { 1, 10 };
 assert_sorted(a, cmp_int);
}

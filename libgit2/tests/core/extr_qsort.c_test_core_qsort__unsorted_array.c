
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_sorted (int*,int ) ;
 int cmp_int ;

void test_core_qsort__unsorted_array(void)
{
 int a[] = { 123, 9, 412938, 10, 234, 89 };
 assert_sorted(a, cmp_int);
}

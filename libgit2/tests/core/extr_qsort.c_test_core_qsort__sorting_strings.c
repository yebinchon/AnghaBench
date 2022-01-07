
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_sorted (char**,int ) ;
 int cmp_str ;

void test_core_qsort__sorting_strings(void)
{
 char *a[] = { "foo", "bar", "baz" };
 assert_sorted(a, cmp_str);
}

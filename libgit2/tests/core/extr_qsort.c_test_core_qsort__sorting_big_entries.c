
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct big_entries {struct big_entries** c; } ;
typedef int a ;


 int assert_sorted (struct big_entries*,int ) ;
 int cl_assert_equal_i (int ,int) ;
 int cmp_big ;
 int memset (struct big_entries**,char,int) ;
 int strspn (struct big_entries**,char*) ;

void test_core_qsort__sorting_big_entries(void)
{
 struct big_entries a[5];

 memset(&a, 0, sizeof(a));

 memset(a[0].c, 'w', sizeof(a[0].c) - 1);
 memset(a[1].c, 'c', sizeof(a[1].c) - 1);
 memset(a[2].c, 'w', sizeof(a[2].c) - 1);
 memset(a[3].c, 'h', sizeof(a[3].c) - 1);
 memset(a[4].c, 'a', sizeof(a[4].c) - 1);

 assert_sorted(a, cmp_big);

 cl_assert_equal_i(strspn(a[0].c, "a"), sizeof(a[0].c) - 1);
 cl_assert_equal_i(strspn(a[1].c, "c"), sizeof(a[1].c) - 1);
 cl_assert_equal_i(strspn(a[2].c, "h"), sizeof(a[2].c) - 1);
 cl_assert_equal_i(strspn(a[3].c, "w"), sizeof(a[3].c) - 1);
 cl_assert_equal_i(strspn(a[4].c, "w"), sizeof(a[4].c) - 1);
}

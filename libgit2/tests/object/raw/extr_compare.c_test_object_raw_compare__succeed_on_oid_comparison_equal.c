
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_assert (int) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromraw (int *,unsigned char*) ;

void test_object_raw_compare__succeed_on_oid_comparison_equal(void)
{
 git_oid a, b;
 unsigned char a_in[] = {
  0x16, 0xa6, 0x77, 0x70, 0xb7,
  0xd8, 0xd7, 0x23, 0x17, 0xc4,
  0xb7, 0x75, 0x21, 0x3c, 0x23,
  0xa8, 0xbd, 0x74, 0xf5, 0xe0,
 };
 git_oid_fromraw(&a, a_in);
 git_oid_fromraw(&b, a_in);
 cl_assert(git_oid_cmp(&a, &b) == 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_b (int,int ) ;
 int has_nsecs () ;

void test_index_nsec__has_nanos(void)
{
 cl_assert_equal_b(1, has_nsecs());
}

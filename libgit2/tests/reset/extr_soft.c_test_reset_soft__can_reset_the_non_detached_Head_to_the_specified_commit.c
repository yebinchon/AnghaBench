
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_reset_soft (int) ;

void test_reset_soft__can_reset_the_non_detached_Head_to_the_specified_commit(void)
{
 assert_reset_soft(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_MAILMAP ;
 int cl_git_pass (int ) ;
 int git_mailmap_from_buffer (int *,int ,int ) ;
 int mailmap ;
 int strlen (int ) ;

void test_mailmap_basic__initialize(void)
{
 cl_git_pass(git_mailmap_from_buffer(
  &mailmap, TEST_MAILMAP, strlen(TEST_MAILMAP)));
}

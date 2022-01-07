
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFERENCE_FORMAT_NORMAL ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_reference_normalize_name (char*,int,char*,int ) ;

void test_refs_normalize__buffer_has_to_be_big_enough_to_hold_the_normalized_version(void)
{
 char buffer_out[21];

 cl_git_pass(git_reference_normalize_name(
  buffer_out, 21, "refs//heads///long///name", GIT_REFERENCE_FORMAT_NORMAL));
 cl_git_fail(git_reference_normalize_name(
  buffer_out, 20, "refs//heads///long///name", GIT_REFERENCE_FORMAT_NORMAL));
}

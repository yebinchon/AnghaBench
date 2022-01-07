
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int PATCH_TRUNCATED_2 ;
 int cl_git_fail (int ) ;
 int git_patch_from_buffer (int **,int ,int ,int *) ;
 int strlen (int ) ;

void test_apply_fromfile__fail_truncated_2(void)
{
 git_patch *patch;
 cl_git_fail(git_patch_from_buffer(&patch, PATCH_TRUNCATED_2,
  strlen(PATCH_TRUNCATED_2), ((void*)0)));
}

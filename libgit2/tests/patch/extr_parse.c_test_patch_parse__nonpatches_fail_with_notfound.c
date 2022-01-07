
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int GIT_ENOTFOUND ;
 int PATCH_NOT_A_PATCH ;
 int cl_git_fail_with (int ,int ) ;
 int git_patch_from_buffer (int **,int ,int ,int *) ;
 int strlen (int ) ;

void test_patch_parse__nonpatches_fail_with_notfound(void)
{
 git_patch *patch;

 cl_git_fail_with(GIT_ENOTFOUND,
  git_patch_from_buffer(&patch, PATCH_NOT_A_PATCH,
  strlen(PATCH_NOT_A_PATCH), ((void*)0)));
}

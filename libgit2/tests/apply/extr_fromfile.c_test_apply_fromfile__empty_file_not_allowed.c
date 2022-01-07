
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int cl_git_fail (int ) ;
 int git_patch_from_buffer (int **,char*,int ,int *) ;

void test_apply_fromfile__empty_file_not_allowed(void)
{
 git_patch *patch;

 cl_git_fail(git_patch_from_buffer(&patch, "", 0, ((void*)0)));
 cl_git_fail(git_patch_from_buffer(&patch, ((void*)0), 0, ((void*)0)));
}

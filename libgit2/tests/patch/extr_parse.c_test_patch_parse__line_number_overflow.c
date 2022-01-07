
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int PATCH_INTMAX_NEW_LINES ;
 int cl_git_fail (int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,int ,int ,int *) ;
 int strlen (int ) ;

void test_patch_parse__line_number_overflow(void)
{
 git_patch *patch;
 cl_git_fail(git_patch_from_buffer(&patch, PATCH_INTMAX_NEW_LINES, strlen(PATCH_INTMAX_NEW_LINES), ((void*)0)));
 git_patch_free(patch);
}

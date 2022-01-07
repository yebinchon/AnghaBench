
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int PATCH_ORIGINAL_TO_CHANGE_MIDDLE ;
 int cl_git_pass (int ) ;
 int ensure_patch_validity (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,int ,int ,int *) ;
 int strlen (int ) ;

void test_patch_parse__original_to_change_middle(void)
{
 git_patch *patch;

 cl_git_pass(git_patch_from_buffer(
  &patch, PATCH_ORIGINAL_TO_CHANGE_MIDDLE,
  strlen(PATCH_ORIGINAL_TO_CHANGE_MIDDLE), ((void*)0)));
 ensure_patch_validity(patch);
 git_patch_free(patch);
}

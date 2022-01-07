
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int GIT_ERROR ;
 int PATCH_CORRUPT_GIT_HEADER ;
 int PATCH_CORRUPT_MISSING_HUNK_HEADER ;
 int PATCH_CORRUPT_MISSING_NEW_FILE ;
 int PATCH_CORRUPT_MISSING_OLD_FILE ;
 int PATCH_CORRUPT_NO_CHANGES ;
 int cl_git_fail_with (int ,int ) ;
 int git_patch_from_buffer (int **,int ,int ,int *) ;
 int strlen (int ) ;

void test_patch_parse__invalid_patches_fails(void)
{
 git_patch *patch;

 cl_git_fail_with(GIT_ERROR,
  git_patch_from_buffer(&patch, PATCH_CORRUPT_GIT_HEADER,
  strlen(PATCH_CORRUPT_GIT_HEADER), ((void*)0)));
 cl_git_fail_with(GIT_ERROR,
  git_patch_from_buffer(&patch,
  PATCH_CORRUPT_MISSING_NEW_FILE,
  strlen(PATCH_CORRUPT_MISSING_NEW_FILE), ((void*)0)));
 cl_git_fail_with(GIT_ERROR,
  git_patch_from_buffer(&patch,
  PATCH_CORRUPT_MISSING_OLD_FILE,
  strlen(PATCH_CORRUPT_MISSING_OLD_FILE), ((void*)0)));
 cl_git_fail_with(GIT_ERROR,
  git_patch_from_buffer(&patch, PATCH_CORRUPT_NO_CHANGES,
  strlen(PATCH_CORRUPT_NO_CHANGES), ((void*)0)));
 cl_git_fail_with(GIT_ERROR,
  git_patch_from_buffer(&patch,
  PATCH_CORRUPT_MISSING_HUNK_HEADER,
  strlen(PATCH_CORRUPT_MISSING_HUNK_HEADER), ((void*)0)));
}

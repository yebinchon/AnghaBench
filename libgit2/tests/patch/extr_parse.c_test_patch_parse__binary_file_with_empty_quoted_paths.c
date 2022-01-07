
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;


 int PATCH_BINARY_FILE_WITH_QUOTED_EMPTY_PATHS ;
 int cl_git_fail (int ) ;
 int git_patch_from_buffer (int **,int ,int ,int *) ;
 int strlen (int ) ;

void test_patch_parse__binary_file_with_empty_quoted_paths(void)
{
 git_patch *patch;
 cl_git_fail(git_patch_from_buffer(&patch, PATCH_BINARY_FILE_WITH_QUOTED_EMPTY_PATHS,
       strlen(PATCH_BINARY_FILE_WITH_QUOTED_EMPTY_PATHS), ((void*)0)));
}

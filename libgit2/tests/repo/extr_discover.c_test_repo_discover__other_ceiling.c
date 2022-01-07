
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;


 int GIT_ENOTFOUND ;
 int SUB_REPOSITORY_FOLDER ;
 int SUB_REPOSITORY_FOLDER_SUB ;
 int SUB_REPOSITORY_FOLDER_SUB_SUB ;
 int SUB_REPOSITORY_FOLDER_SUB_SUB_SUB ;
 int SUB_REPOSITORY_GITDIR ;
 int append_ceiling_dir (TYPE_1__*,int ) ;
 TYPE_1__ ceiling_dirs ;
 int cl_assert_equal_i (int ,int ) ;
 int discovered ;
 int ensure_repository_discover (int ,int ,int ) ;
 int git_repository_discover (int *,int ,int ,int ) ;

void test_repo_discover__other_ceiling(void)
{
 append_ceiling_dir(&ceiling_dirs, SUB_REPOSITORY_FOLDER);



 ensure_repository_discover(SUB_REPOSITORY_FOLDER, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);

 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_discover(&discovered, SUB_REPOSITORY_FOLDER_SUB, 0, ceiling_dirs.ptr));
 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_discover(&discovered, SUB_REPOSITORY_FOLDER_SUB_SUB, 0, ceiling_dirs.ptr));
 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_discover(&discovered, SUB_REPOSITORY_FOLDER_SUB_SUB_SUB, 0, ceiling_dirs.ptr));
}

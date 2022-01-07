
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;


 int ALTERNATE_MALFORMED_FOLDER1 ;
 int ALTERNATE_MALFORMED_FOLDER2 ;
 int ALTERNATE_MALFORMED_FOLDER3 ;
 int ALTERNATE_NOT_FOUND_FOLDER ;
 int GIT_ENOTFOUND ;
 TYPE_1__ ceiling_dirs ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int discovered ;
 int git_repository_discover (int *,int ,int ,int ) ;

void test_repo_discover__discovering_repository_with_malformed_alternative_gitdir_fails(void)
{
 cl_git_fail(git_repository_discover(&discovered, ALTERNATE_MALFORMED_FOLDER1, 0, ceiling_dirs.ptr));
 cl_git_fail(git_repository_discover(&discovered, ALTERNATE_MALFORMED_FOLDER2, 0, ceiling_dirs.ptr));
 cl_git_fail(git_repository_discover(&discovered, ALTERNATE_MALFORMED_FOLDER3, 0, ceiling_dirs.ptr));
 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_discover(&discovered, ALTERNATE_NOT_FOUND_FOLDER, 0, ceiling_dirs.ptr));
}

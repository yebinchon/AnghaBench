
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;


 int DISCOVER_FOLDER ;
 int SUB_REPOSITORY_FOLDER ;
 TYPE_1__ ceiling_dirs ;
 int cl_git_pass (int ) ;
 int discovered ;
 int git_repository_discover (int *,int ,int ,int ) ;

void test_repo_discover__discovering_repo_with_exact_path_succeeds(void)
{
 cl_git_pass(git_repository_discover(&discovered, DISCOVER_FOLDER, 0, ceiling_dirs.ptr));
 cl_git_pass(git_repository_discover(&discovered, SUB_REPOSITORY_FOLDER, 0, ceiling_dirs.ptr));
}

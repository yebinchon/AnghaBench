
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_7__ {int ptr; scalar_t__ size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 scalar_t__ git__suffixcmp (int ,char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,int ) ;
 int git_buf_truncate (TYPE_1__*,scalar_t__) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_path (int *) ;
 int git_repository_workdir (int *) ;
 int unposix_path (TYPE_1__*) ;

void test_repo_open__win32_path(void)
{
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_remote ;
typedef int git_clone_options ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CLONE_OPTIONS_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert_equal_s (int ,int ) ;
 char* cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_clone (int **,int ,char*,int *) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,char*) ;
 int git_remote_url (int *) ;
 int git_repository_free (int *) ;
 int git_style_unc_path (TYPE_1__*,char*,char const*) ;

void test_clone_local__git_style_unc_paths(void)
{
}

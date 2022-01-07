
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_ALLOW_CONFLICTS ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_clear (int *) ;
 int git_index_free (int *) ;
 int git_path_isfile (char*) ;
 int git_repository_index (int **,int ) ;
 int p_mkdir (char*,int) ;
 int p_unlink (char*) ;

void test_checkout_index__can_overcome_name_clashes(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_index *index;

 cl_git_pass(git_repository_index(&index, g_repo));
 git_index_clear(index);

 cl_git_mkfile("./testrepo/path0", "content\r\n");
 cl_git_pass(p_mkdir("./testrepo/path1", 0777));
 cl_git_mkfile("./testrepo/path1/file1", "content\r\n");

 cl_git_pass(git_index_add_bypath(index, "path0"));
 cl_git_pass(git_index_add_bypath(index, "path1/file1"));

 cl_git_pass(p_unlink("./testrepo/path0"));
 cl_git_pass(git_futils_rmdir_r(
  "./testrepo/path1", ((void*)0), GIT_RMDIR_REMOVE_FILES));

 cl_git_mkfile("./testrepo/path1", "content\r\n");
 cl_git_pass(p_mkdir("./testrepo/path0", 0777));
 cl_git_mkfile("./testrepo/path0/file0", "content\r\n");

 cl_assert(git_path_isfile("./testrepo/path1"));
 cl_assert(git_path_isfile("./testrepo/path0/file0"));

 opts.checkout_strategy =
  GIT_CHECKOUT_SAFE |
  GIT_CHECKOUT_RECREATE_MISSING |
  GIT_CHECKOUT_ALLOW_CONFLICTS;
 cl_git_pass(git_checkout_index(g_repo, index, &opts));

 cl_assert(git_path_isfile("./testrepo/path1"));
 cl_assert(git_path_isfile("./testrepo/path0/file0"));

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 cl_git_pass(git_checkout_index(g_repo, index, &opts));

 cl_assert(git_path_isfile("./testrepo/path0"));
 cl_assert(git_path_isfile("./testrepo/path1/file1"));

 git_index_free(index);
}

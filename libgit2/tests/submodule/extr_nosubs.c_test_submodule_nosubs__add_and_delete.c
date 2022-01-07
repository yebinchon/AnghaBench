
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_repository ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_readbuffer (TYPE_1__*,char*) ;
 int git_submodule_add_setup (int **,int *,char*,char*,int) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int *,char*) ;
 int git_submodule_name (int *) ;
 int git_submodule_path (int *) ;
 int p_unlink (char*) ;
 int * strstr (int ,char*) ;

void test_submodule_nosubs__add_and_delete(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_submodule *sm;
 git_buf buf = GIT_BUF_INIT;

 cl_git_fail(git_submodule_lookup(((void*)0), repo, "libgit2"));
 cl_git_fail(git_submodule_lookup(((void*)0), repo, "submodules/libgit2"));



 cl_git_pass(git_submodule_add_setup(
  &sm, repo, "https://github.com/libgit2/libgit2.git", "submodules/libgit2", 1));
 cl_assert_equal_s("submodules/libgit2", git_submodule_name(sm));
 cl_assert_equal_s("submodules/libgit2", git_submodule_path(sm));
 git_submodule_free(sm);

 cl_git_pass(git_futils_readbuffer(&buf, "status/.gitmodules"));
 cl_assert(strstr(buf.ptr, "[submodule \"submodules/libgit2\"]") != ((void*)0));
 cl_assert(strstr(buf.ptr, "path = submodules/libgit2") != ((void*)0));
 git_buf_dispose(&buf);



 cl_git_fail(git_submodule_lookup(&sm, repo, "libgit2"));
 cl_git_pass(git_submodule_lookup(&sm, repo, "submodules/libgit2"));
 cl_assert_equal_s("submodules/libgit2", git_submodule_name(sm));
 cl_assert_equal_s("submodules/libgit2", git_submodule_path(sm));
 git_submodule_free(sm);



 cl_git_rewritefile(
  "status/.gitmodules",
  "[submodule \"libgit2\"]\n"
  "  path = submodules/libgit2\n"
  "  url = https://github.com/libgit2/libgit2.git\n");

 cl_git_pass(git_submodule_lookup(&sm, repo, "libgit2"));
 cl_assert_equal_s("libgit2", git_submodule_name(sm));
 cl_assert_equal_s("submodules/libgit2", git_submodule_path(sm));
 git_submodule_free(sm);
 cl_git_pass(git_submodule_lookup(&sm, repo, "submodules/libgit2"));
 git_submodule_free(sm);



 cl_git_rewritefile(
  "status/.gitmodules",
  "[submodule \"submodules/libgit2\"]\n"
  "  path = submodules/libgit2\n"
  "  url = https://github.com/libgit2/libgit2.git\n");

 cl_git_fail(git_submodule_lookup(&sm, repo, "libgit2"));
 cl_git_pass(git_submodule_lookup(&sm, repo, "submodules/libgit2"));
 git_submodule_free(sm);



 cl_must_pass(p_unlink("status/.gitmodules"));
 cl_git_fail(git_submodule_lookup(&sm, repo, "libgit2"));
 cl_git_fail(git_submodule_lookup(&sm, repo, "submodules/libgit2"));
}

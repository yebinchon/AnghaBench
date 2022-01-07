
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_iterator ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_MKDIR_PATH ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 int expect_iterator_items (int *,int,int *,int,int *) ;
 int g_repo ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_oom (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ,int) ;
 int git_futils_mkdir (int ,int,int ) ;
 int git_iterator_for_filesystem (int **,char*,int *) ;
 int git_iterator_free (int *) ;
 int git_repository_path (int ) ;

void test_iterator_workdir__filesystem_gunk(void)
{
 git_iterator *i;
 git_buf parent = GIT_BUF_INIT;
 int n;

 if (!cl_is_env_set("GITTEST_INVASIVE_SPEED"))
  cl_skip();

 g_repo = cl_git_sandbox_init("testrepo");

 for (n = 0; n < 100000; n++) {
  git_buf_clear(&parent);
  git_buf_printf(&parent, "%s/refs/heads/foo/%d/subdir",
   git_repository_path(g_repo), n);
  cl_assert(!git_buf_oom(&parent));

  cl_git_pass(git_futils_mkdir(parent.ptr, 0775, GIT_MKDIR_PATH));
 }

 cl_git_pass(git_iterator_for_filesystem(&i, "testrepo/.git/refs", ((void*)0)));




 expect_iterator_items(i, 16, ((void*)0), 15, ((void*)0));
 git_iterator_free(i);
 git_buf_dispose(&parent);
}

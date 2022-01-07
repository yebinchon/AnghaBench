
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* workdir_path; int flags; } ;
typedef TYPE_1__ git_repository_init_options ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 int GIT_REPOSITORY_INIT_NO_DOTGIT_DIR ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int GIT_REPOSITORY_INIT_RELATIVE_GITLINK ;
 int _repo ;
 int assert_config_entry_value (int ,char*,char*) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int cleanup_repository (char*) ;
 int git__suffixcmp (int ,char*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_futils_readbuffer (TYPE_2__*,char*) ;
 int git_repository_init_ext (int *,char*,TYPE_1__*) ;
 int git_repository_is_bare (int ) ;
 int git_repository_is_empty (int ) ;
 int git_repository_path (int ) ;
 int git_repository_workdir (int ) ;

void test_repo_init__relative_gitdir(void)
{
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
 git_buf dot_git_content = GIT_BUF_INIT;

 opts.workdir_path = "../c_wd";
 opts.flags =
  GIT_REPOSITORY_INIT_MKPATH |
  GIT_REPOSITORY_INIT_RELATIVE_GITLINK |
  GIT_REPOSITORY_INIT_NO_DOTGIT_DIR;


 cl_git_pass(git_repository_init_ext(&_repo, "root/b/my_repository", &opts));

 cl_assert(!git__suffixcmp(git_repository_workdir(_repo), "root/b/c_wd/"));
 cl_assert(!git__suffixcmp(git_repository_path(_repo), "root/b/my_repository/"));
 cl_assert(!git_repository_is_bare(_repo));
 cl_assert(git_repository_is_empty(_repo));




 assert_config_entry_value(_repo, "core.worktree", "../c_wd/");


 cl_git_pass(git_futils_readbuffer(&dot_git_content, "root/b/c_wd/.git"));
 cl_assert_equal_s("gitdir: ../my_repository/", dot_git_content.ptr);

 git_buf_dispose(&dot_git_content);
 cleanup_repository("root");
}

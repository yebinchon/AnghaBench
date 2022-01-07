
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_MKDIR_VERIFY_DIR ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (int ,char const*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char*) ;
 int git_futils_mkdir (char const*,int,int ) ;

__attribute__((used)) static void make_gitlink_dir(const char *dir, const char *linktext)
{
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_futils_mkdir(dir, 0777, GIT_MKDIR_VERIFY_DIR));
 cl_git_pass(git_buf_joinpath(&path, dir, ".git"));
 cl_git_rewritefile(path.ptr, linktext);
 git_buf_dispose(&path);
}

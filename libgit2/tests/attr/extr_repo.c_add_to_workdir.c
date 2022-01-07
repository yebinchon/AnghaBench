
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (int ,char const*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,char*,char const*) ;

__attribute__((used)) static void add_to_workdir(const char *filename, const char *content)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&buf, "attr", filename));
 cl_git_rewritefile(git_buf_cstr(&buf), content);

 git_buf_dispose(&buf);
}

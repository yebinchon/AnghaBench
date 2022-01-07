
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_buf ;


 int GITATTR ;
 int GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (int ,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_futils_mkpath2file (int ,int) ;
 int git_repository_path (int *) ;

__attribute__((used)) static void write_attributes(git_repository *repo)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&buf, git_repository_path(repo), "info"));
 cl_git_pass(git_buf_joinpath(&buf, git_buf_cstr(&buf), "attributes"));

 cl_git_pass(git_futils_mkpath2file(git_buf_cstr(&buf), 0777));
 cl_git_rewritefile(git_buf_cstr(&buf), GITATTR);

 git_buf_dispose(&buf);
}

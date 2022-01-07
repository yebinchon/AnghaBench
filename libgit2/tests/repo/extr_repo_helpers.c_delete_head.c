
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_HEAD_FILE ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,int ) ;
 int git_repository_path (int *) ;
 int p_unlink (int ) ;

void delete_head(git_repository* repo)
{
 git_buf head_path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&head_path, git_repository_path(repo), GIT_HEAD_FILE));
 cl_git_pass(p_unlink(git_buf_cstr(&head_path)));

 git_buf_dispose(&head_path);
}

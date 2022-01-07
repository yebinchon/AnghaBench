
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gitdir; scalar_t__ commondir; } ;
typedef TYPE_1__ git_repository ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_path_exists (int ) ;
 int strcmp (scalar_t__,int ) ;

__attribute__((used)) static int repo_is_worktree(unsigned *out, const git_repository *repo)
{
 git_buf gitdir_link = GIT_BUF_INIT;
 int error;


 if (repo->commondir && repo->gitdir
     && !strcmp(repo->commondir, repo->gitdir)) {
  *out = 0;
  return 0;
 }

 if ((error = git_buf_joinpath(&gitdir_link, repo->gitdir, "gitdir")) < 0)
  return -1;



 *out = !!git_path_exists(gitdir_link.ptr);

 git_buf_dispose(&gitdir_link);
 return error;
}

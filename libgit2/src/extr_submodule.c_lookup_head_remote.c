
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_remote ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_remote_lookup (int **,int *,int ) ;
 int lookup_head_remote_key (TYPE_1__*,int *) ;

__attribute__((used)) static int lookup_head_remote(git_remote **remote, git_repository *repo)
{
 int error;
 git_buf remote_name = GIT_BUF_INIT;


 if (!(error = lookup_head_remote_key(&remote_name, repo)))
  error = git_remote_lookup(remote, repo, remote_name.ptr);

 git_buf_dispose(&remote_name);

 return error;
}

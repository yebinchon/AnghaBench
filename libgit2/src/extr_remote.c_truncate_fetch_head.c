
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_FETCH_HEAD_FILE ;
 int GIT_REFS_FILE_MODE ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,int ) ;
 int git_futils_truncate (int ,int ) ;

__attribute__((used)) static int truncate_fetch_head(const char *gitdir)
{
 git_buf path = GIT_BUF_INIT;
 int error;

 if ((error = git_buf_joinpath(&path, gitdir, GIT_FETCH_HEAD_FILE)) < 0)
  return error;

 error = git_futils_truncate(path.ptr, GIT_REFS_FILE_MODE);
 git_buf_dispose(&path);

 return error;
}

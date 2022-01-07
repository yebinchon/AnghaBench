
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int mode_t ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_BLOB_EXECUTABLE ;
 scalar_t__ GIT_PERMS_IS_EXEC (int ) ;
 int cl_must_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char*,char const*) ;
 int p_stat (int ,struct stat*) ;

mode_t read_filemode(const char *path)
{
 git_buf fullpath = GIT_BUF_INIT;
 struct stat st;
 mode_t result;

 git_buf_joinpath(&fullpath, "testrepo", path);
 cl_must_pass(p_stat(fullpath.ptr, &st));

 result = GIT_PERMS_IS_EXEC(st.st_mode) ?
  GIT_FILEMODE_BLOB_EXECUTABLE : GIT_FILEMODE_BLOB;

 git_buf_dispose(&fullpath);

 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int direach_flags; int gitpath; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_REFS_DIR ;
 int _dirent_loose_load ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,int ) ;
 int git_path_direach (int *,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int packed_loadloose(refdb_fs_backend *backend)
{
 int error;
 git_buf refs_path = GIT_BUF_INIT;

 if (git_buf_joinpath(&refs_path, backend->gitpath, GIT_REFS_DIR) < 0)
  return -1;






 error = git_path_direach(
  &refs_path, backend->direach_flags, _dirent_loose_load, backend);

 git_buf_dispose(&refs_path);

 return error;
}

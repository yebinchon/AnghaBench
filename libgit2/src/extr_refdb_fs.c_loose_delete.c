
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int commonpath; } ;
typedef TYPE_1__ refdb_fs_backend ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 scalar_t__ ENOENT ;
 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 scalar_t__ errno ;
 int git_buf_dispose (TYPE_2__*) ;
 scalar_t__ git_buf_joinpath (TYPE_2__*,int ,char const*) ;
 int p_unlink (int ) ;

__attribute__((used)) static int loose_delete(refdb_fs_backend *backend, const char *ref_name)
{
 git_buf loose_path = GIT_BUF_INIT;
 int error = 0;

 if (git_buf_joinpath(&loose_path, backend->commonpath, ref_name) < 0)
  return -1;

 error = p_unlink(loose_path.ptr);
 if (error < 0 && errno == ENOENT)
  error = GIT_ENOTFOUND;
 else if (error != 0)
  error = -1;

 git_buf_dispose(&loose_path);

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int gitpath; int direach_flags; } ;
typedef TYPE_1__ refdb_fs_backend ;
struct TYPE_9__ {char* ptr; } ;
typedef TYPE_2__ git_buf ;


 int GIT_ENOTFOUND ;
 scalar_t__ git__suffixcmp (char*,char*) ;
 int git_error_clear () ;
 int git_path_direach (TYPE_2__*,int ,int (*) (void*,TYPE_2__*),TYPE_1__*) ;
 scalar_t__ git_path_isdir (char*) ;
 int loose_lookup_to_packfile (TYPE_1__*,char const*) ;
 int strlen (int ) ;

__attribute__((used)) static int _dirent_loose_load(void *payload, git_buf *full_path)
{
 refdb_fs_backend *backend = payload;
 const char *file_path;

 if (git__suffixcmp(full_path->ptr, ".lock") == 0)
  return 0;

 if (git_path_isdir(full_path->ptr)) {
  int error = git_path_direach(
   full_path, backend->direach_flags, _dirent_loose_load, backend);

  if (error == GIT_ENOTFOUND) {
   git_error_clear();
   return 0;
  }

  return error;
 }

 file_path = full_path->ptr + strlen(backend->gitpath);

 return loose_lookup_to_packfile(backend, file_path);
}

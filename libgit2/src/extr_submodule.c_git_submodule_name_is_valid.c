
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_PATH_REJECT_FILESYSTEM_DEFAULTS ;
 int git_buf_attach_notowned (TYPE_1__*,char const*,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_path_isvalid (int *,int ,int ,int) ;
 int git_path_normalize_slashes (TYPE_1__*,char const*) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;

int git_submodule_name_is_valid(git_repository *repo, const char *name, int flags)
{
 git_buf buf = GIT_BUF_INIT;
 int error, isvalid;

 if (flags == 0)
  flags = GIT_PATH_REJECT_FILESYSTEM_DEFAULTS;


 if (strchr(name, '\\') != ((void*)0)) {
  if ((error = git_path_normalize_slashes(&buf, name)) < 0)
   return error;
 } else {
  git_buf_attach_notowned(&buf, name, strlen(name));
 }

 isvalid = git_path_isvalid(repo, buf.ptr, 0, flags);
 git_buf_dispose(&buf);

 return isvalid;
}

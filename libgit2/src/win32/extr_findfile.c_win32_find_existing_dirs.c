
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_11__ {int ptr; scalar_t__ size; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_12__ {int* path; } ;
typedef TYPE_2__ _findfile_path ;


 int F_OK ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_PATH_LIST_SEPARATOR ;
 int _waccess (int*,int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_win32__expand_path (TYPE_2__*,int const*) ;
 int win32_path_to_8 (TYPE_1__*,int*) ;

__attribute__((used)) static int win32_find_existing_dirs(
 git_buf *out, const wchar_t *tmpl[])
{
 _findfile_path path16;
 git_buf buf = GIT_BUF_INIT;

 git_buf_clear(out);

 for (; *tmpl != ((void*)0); tmpl++) {
  if (!git_win32__expand_path(&path16, *tmpl) &&
   path16.path[0] != L'%' &&
   !_waccess(path16.path, F_OK))
  {
   win32_path_to_8(&buf, path16.path);

   if (buf.size)
    git_buf_join(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);
  }
 }

 git_buf_dispose(&buf);

 return (git_buf_oom(out) ? -1 : 0);
}

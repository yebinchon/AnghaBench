
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_11__ {int ptr; scalar_t__ size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_PATH_LIST_SEPARATOR ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int REG_MSYSGIT_INSTALL ;
 int REG_MSYSGIT_INSTALL_LOCAL ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_set (TYPE_1__*,int ,scalar_t__) ;
 int win32_find_git_in_path (TYPE_1__*,char*,int const*) ;
 int win32_find_git_in_registry (TYPE_1__*,int ,int ,int const*) ;

int git_win32__find_system_dirs(git_buf *out, const wchar_t *subdir)
{
 git_buf buf = GIT_BUF_INIT;


 if (!win32_find_git_in_path(&buf, L"git.exe", subdir) && buf.size)
  git_buf_set(out, buf.ptr, buf.size);
 else
  git_buf_clear(out);

 if (!win32_find_git_in_path(&buf, L"git.cmd", subdir) && buf.size)
  git_buf_join(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);


 if (!win32_find_git_in_registry(
   &buf, HKEY_CURRENT_USER, REG_MSYSGIT_INSTALL_LOCAL, subdir) && buf.size)
  git_buf_join(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);

 if (!win32_find_git_in_registry(
   &buf, HKEY_LOCAL_MACHINE, REG_MSYSGIT_INSTALL, subdir) && buf.size)
  git_buf_join(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);

 git_buf_dispose(&buf);

 return (git_buf_oom(out) ? -1 : 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int git_win32_utf8_path ;
typedef int git_buf ;


 int GIT_ERROR_OS ;
 int git_buf_sets (int *,int ) ;
 int git_error_set (int ,char*) ;
 int git_path_mkposix (int ) ;
 scalar_t__ git_win32_path_to_utf8 (int ,int const*) ;

__attribute__((used)) static int win32_path_to_8(git_buf *dest, const wchar_t *src)
{
 git_win32_utf8_path utf8_path;

 if (git_win32_path_to_utf8(utf8_path, src) < 0) {
  git_error_set(GIT_ERROR_OS, "unable to convert path to UTF-8");
  return -1;
 }


 git_path_mkposix(utf8_path);

 return git_buf_sets(dest, utf8_path);
}

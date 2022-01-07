
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int git_win32_path ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const*,int ,int,int *,int ,int ,int *) ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_NAME_NORMALIZED ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ GIT_WIN_PATH_UTF16 ;
 scalar_t__ GetFinalPathNameByHandleW (scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ git_win32_path_remove_namespace (int ,scalar_t__) ;

__attribute__((used)) static int getfinalpath_w(
 git_win32_path dest,
 const wchar_t *path)
{
 HANDLE hFile;
 DWORD dwChars;




 hFile = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_DELETE,
  ((void*)0), OPEN_EXISTING, FILE_FLAG_BACKUP_SEMANTICS, ((void*)0));

 if (INVALID_HANDLE_VALUE == hFile)
  return -1;


 dwChars = GetFinalPathNameByHandleW(hFile, dest, GIT_WIN_PATH_UTF16, FILE_NAME_NORMALIZED);
 CloseHandle(hFile);

 if (!dwChars || dwChars >= GIT_WIN_PATH_UTF16)
  return -1;


 return (int)git_win32_path_remove_namespace(dest, dwChars);
}

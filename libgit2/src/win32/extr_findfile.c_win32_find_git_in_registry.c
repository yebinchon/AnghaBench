
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int path ;
typedef scalar_t__ git_win32_path ;
typedef int git_buf ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int GIT_ENOTFOUND ;
 int KEY_READ ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int const,int const*,int ,int ,int *) ;
 int RegQueryValueExW (int ,char*,int *,scalar_t__*,int ,scalar_t__*) ;
 int assert (int *) ;
 int wcscat (scalar_t__,int const*) ;
 int wcslen (int const*) ;
 int win32_path_to_8 (int *,scalar_t__) ;

__attribute__((used)) static int win32_find_git_in_registry(
 git_buf *buf, const HKEY hive, const wchar_t *key, const wchar_t *subdir)
{
 HKEY hKey;
 int error = GIT_ENOTFOUND;

 assert(buf);

 if (!RegOpenKeyExW(hive, key, 0, KEY_READ, &hKey)) {
  DWORD dwType, cbData;
  git_win32_path path;



  cbData = (DWORD)(sizeof(path) - wcslen(subdir) * sizeof(wchar_t));


  if (!RegQueryValueExW(hKey, L"InstallLocation", ((void*)0), &dwType, (LPBYTE)path, &cbData) &&
   dwType == REG_SZ) {


   wcscat(path, subdir);



   if (!win32_path_to_8(buf, path))
    error = 0;
  }

  RegCloseKey(hKey);
 }

 return error;
}

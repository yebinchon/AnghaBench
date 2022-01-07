
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int PATH__ABSOLUTE_LEN ;
 int PATH__NT_NAMESPACE_LEN ;
 scalar_t__ git_path_is_absolute (int *) ;
 scalar_t__ path__is_nt_namespace (int *) ;
 scalar_t__ path__is_unc (int *) ;
 int * path__skip_server (int *) ;
 scalar_t__ wcsncmp (int *,char*,int) ;

__attribute__((used)) static wchar_t *path__skip_prefix(wchar_t *path)
{
 if (path__is_nt_namespace(path)) {
  path += PATH__NT_NAMESPACE_LEN;

  if (wcsncmp(path, L"UNC\\", 4) == 0)
   path = path__skip_server(path + 4);
  else if (git_path_is_absolute(path))
   path += PATH__ABSOLUTE_LEN;
 } else if (git_path_is_absolute(path)) {
  path += PATH__ABSOLUTE_LEN;
 } else if (path__is_unc(path)) {
  path = path__skip_server(path + 2);
 }

 return path;
}

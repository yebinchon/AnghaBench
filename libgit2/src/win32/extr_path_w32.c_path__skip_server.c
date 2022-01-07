
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 scalar_t__ git_path_is_dirsep (scalar_t__) ;

__attribute__((used)) static wchar_t *path__skip_server(wchar_t *path)
{
 wchar_t *c;

 for (c = path; *c; c++) {
  if (git_path_is_dirsep(*c))
   return c + 1;
 }

 return c;
}

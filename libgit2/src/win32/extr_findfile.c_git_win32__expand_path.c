
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {scalar_t__ len; int path; } ;
typedef TYPE_1__ _findfile_path ;


 scalar_t__ ARRAY_SIZE (int ) ;
 scalar_t__ ExpandEnvironmentStringsW (int const*,int ,scalar_t__) ;

__attribute__((used)) static int git_win32__expand_path(_findfile_path *dest, const wchar_t *src)
{
 dest->len = ExpandEnvironmentStringsW(src, dest->path, ARRAY_SIZE(dest->path));

 if (!dest->len || dest->len > ARRAY_SIZE(dest->path))
  return -1;

 return 0;
}

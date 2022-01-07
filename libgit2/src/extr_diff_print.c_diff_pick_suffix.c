
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_PERMS_IS_EXEC (int) ;
 scalar_t__ S_ISDIR (int) ;

__attribute__((used)) static char diff_pick_suffix(int mode)
{
 if (S_ISDIR(mode))
  return '/';
 else if (GIT_PERMS_IS_EXEC(mode))

  return '*';
 else
  return ' ';
}

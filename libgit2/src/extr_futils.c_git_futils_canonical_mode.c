
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int GIT_PERMS_CANONICAL (int) ;
 int S_IFDIR ;
 int S_IFGITLINK ;
 int S_IFLNK ;
 int S_IFREG ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISGITLINK (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;

mode_t git_futils_canonical_mode(mode_t raw_mode)
{
 if (S_ISREG(raw_mode))
  return S_IFREG | GIT_PERMS_CANONICAL(raw_mode);
 else if (S_ISLNK(raw_mode))
  return S_IFLNK;
 else if (S_ISGITLINK(raw_mode))
  return S_IFGITLINK;
 else if (S_ISDIR(raw_mode))
  return S_IFDIR;
 else
  return 0;
}

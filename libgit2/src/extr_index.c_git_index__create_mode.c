
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GIT_PERMS_CANONICAL (unsigned int) ;
 unsigned int S_IFDIR ;
 unsigned int S_IFLNK ;
 unsigned int S_IFMT ;
 unsigned int S_IFREG ;
 scalar_t__ S_ISDIR (unsigned int) ;
 scalar_t__ S_ISLNK (unsigned int) ;

unsigned int git_index__create_mode(unsigned int mode)
{
 if (S_ISLNK(mode))
  return S_IFLNK;

 if (S_ISDIR(mode) || (mode & S_IFMT) == (S_IFLNK | S_IFDIR))
  return (S_IFLNK | S_IFDIR);

 return S_IFREG | GIT_PERMS_CANONICAL(mode);
}

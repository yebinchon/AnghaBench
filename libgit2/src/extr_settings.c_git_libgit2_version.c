
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIBGIT2_VER_MAJOR ;
 int LIBGIT2_VER_MINOR ;
 int LIBGIT2_VER_REVISION ;

void git_libgit2_version(int *major, int *minor, int *rev)
{
 *major = LIBGIT2_VER_MAJOR;
 *minor = LIBGIT2_VER_MINOR;
 *rev = LIBGIT2_VER_REVISION;
}

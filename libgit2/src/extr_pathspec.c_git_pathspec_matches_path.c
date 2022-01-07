
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pathspec; } ;
typedef TYPE_1__ git_pathspec ;


 int GIT_PATHSPEC_IGNORE_CASE ;
 int GIT_PATHSPEC_NO_GLOB ;
 int assert (int) ;
 scalar_t__ git_pathspec__match (int *,char const*,int,int,int *,int *) ;

int git_pathspec_matches_path(
 const git_pathspec *ps, uint32_t flags, const char *path)
{
 bool no_fnmatch = (flags & GIT_PATHSPEC_NO_GLOB) != 0;
 bool casefold = (flags & GIT_PATHSPEC_IGNORE_CASE) != 0;

 assert(ps && path);

 return (0 != git_pathspec__match(
  &ps->pathspec, path, no_fnmatch, casefold, ((void*)0), ((void*)0)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* path; int mode; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_7__ {int pathspec; } ;
typedef TYPE_2__ git_diff_generated ;


 int DIFF_FLAG_IS_SET (TYPE_2__*,int ) ;
 int GIT_DIFF_DISABLE_PATHSPEC_MATCH ;
 int GIT_DIFF_IGNORE_CASE ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int git_pathspec__match (int *,char*,int,int,char const**,int *) ;

__attribute__((used)) static bool diff_pathspec_match(
 const char **matched_pathspec,
 git_diff_generated *diff,
 const git_index_entry *entry)
{
 bool disable_pathspec_match =
  DIFF_FLAG_IS_SET(diff, GIT_DIFF_DISABLE_PATHSPEC_MATCH);







 if ((S_ISLNK(entry->mode) || S_ISREG(entry->mode)) &&
  disable_pathspec_match) {
  *matched_pathspec = entry->path;
  return 1;
 }

 return git_pathspec__match(
  &diff->pathspec, entry->path, disable_pathspec_match,
  DIFF_FLAG_IS_SET(diff, GIT_DIFF_IGNORE_CASE),
  matched_pathspec, ((void*)0));
}

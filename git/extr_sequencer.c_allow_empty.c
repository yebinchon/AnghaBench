
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct replay_opts {scalar_t__ keep_redundant_commits; int allow_empty; } ;
struct commit {int dummy; } ;


 int is_index_unchanged (struct repository*) ;
 int is_original_commit_empty (struct commit*) ;

__attribute__((used)) static int allow_empty(struct repository *r,
         struct replay_opts *opts,
         struct commit *commit)
{
 int index_unchanged, empty_commit;
 if (!opts->allow_empty)
  return 0;

 index_unchanged = is_index_unchanged(r);
 if (index_unchanged < 0)
  return index_unchanged;
 if (!index_unchanged)
  return 0;

 if (opts->keep_redundant_commits)
  return 1;

 empty_commit = is_original_commit_empty(commit);
 if (empty_commit < 0)
  return empty_commit;
 if (!empty_commit)
  return 0;
 else
  return 1;
}

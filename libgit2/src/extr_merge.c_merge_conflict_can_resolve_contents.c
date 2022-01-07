
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int path; int mode; } ;
struct TYPE_5__ {int path; int mode; } ;
struct TYPE_6__ {scalar_t__ type; int our_status; int their_status; TYPE_4__ their_entry; TYPE_1__ ancestor_entry; TYPE_4__ our_entry; } ;
typedef TYPE_2__ git_merge_diff ;


 int GIT_DELTA_RENAMED ;
 scalar_t__ GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 ;
 scalar_t__ GIT_MERGE_DIFF_DIRECTORY_FILE ;
 scalar_t__ GIT_MERGE_DIFF_RENAMED_ADDED ;
 int GIT_MERGE_INDEX_ENTRY_EXISTS (TYPE_4__) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int S_ISLNK (int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool merge_conflict_can_resolve_contents(
 const git_merge_diff *conflict)
{
 if (!GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->our_entry) ||
  !GIT_MERGE_INDEX_ENTRY_EXISTS(conflict->their_entry))
  return 0;


 if (conflict->type == GIT_MERGE_DIFF_DIRECTORY_FILE)
  return 0;


 if (S_ISGITLINK(conflict->ancestor_entry.mode) ||
  S_ISGITLINK(conflict->our_entry.mode) ||
  S_ISGITLINK(conflict->their_entry.mode))
  return 0;


 if ((S_ISLNK(conflict->ancestor_entry.mode) ^
   S_ISLNK(conflict->our_entry.mode)) ||
  (S_ISLNK(conflict->ancestor_entry.mode) ^
   S_ISLNK(conflict->their_entry.mode)))
  return 0;


 if (conflict->type == GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 ||
  conflict->type == GIT_MERGE_DIFF_RENAMED_ADDED)
  return 0;

 if ((conflict->our_status & GIT_DELTA_RENAMED) == GIT_DELTA_RENAMED &&
  (conflict->their_status & GIT_DELTA_RENAMED) == GIT_DELTA_RENAMED &&
  strcmp(conflict->ancestor_entry.path, conflict->their_entry.path) != 0)
  return 0;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int flags; int id; int file_size; int mode; int path; } ;
typedef TYPE_3__ git_index_entry ;
typedef int git_diff_generated ;
struct TYPE_12__ {int flags; int id; void* id_abbrev; int size; int mode; } ;
struct TYPE_11__ {int flags; void* id_abbrev; int id; int size; int mode; } ;
struct TYPE_14__ {int nfiles; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_4__ git_diff_delta ;
typedef scalar_t__ git_delta_t ;


 scalar_t__ DIFF_FLAG_ISNT_SET (int *,int ) ;
 scalar_t__ DIFF_FLAG_IS_SET (int *,int ) ;
 scalar_t__ GIT_DELTA_IGNORED ;
 scalar_t__ GIT_DELTA_MODIFIED ;
 scalar_t__ GIT_DELTA_UNREADABLE ;
 scalar_t__ GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_FLAG_EXISTS ;
 int GIT_DIFF_FLAG_VALID_ID ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNREADABLE ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 int GIT_DIFF_REVERSE ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 int GIT_INDEX_ENTRY_VALID ;
 void* GIT_OID_HEXSZ ;
 int assert (int) ;
 TYPE_4__* diff_delta__alloc (int *,scalar_t__,int ) ;
 int diff_insert_delta (int *,TYPE_4__*,char const*) ;
 int diff_pathspec_match (char const**,int *,TYPE_3__ const*) ;
 int git_oid_cpy (int *,int *) ;
 int git_oid_is_zero (int *) ;

__attribute__((used)) static int diff_delta__from_one(
 git_diff_generated *diff,
 git_delta_t status,
 const git_index_entry *oitem,
 const git_index_entry *nitem)
{
 const git_index_entry *entry = nitem;
 bool has_old = 0;
 git_diff_delta *delta;
 const char *matched_pathspec;

 assert((oitem != ((void*)0)) ^ (nitem != ((void*)0)));

 if (oitem) {
  entry = oitem;
  has_old = 1;
 }

 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_REVERSE))
  has_old = !has_old;

 if ((entry->flags & GIT_INDEX_ENTRY_VALID) != 0)
  return 0;

 if (status == GIT_DELTA_IGNORED &&
  DIFF_FLAG_ISNT_SET(diff, GIT_DIFF_INCLUDE_IGNORED))
  return 0;

 if (status == GIT_DELTA_UNTRACKED &&
  DIFF_FLAG_ISNT_SET(diff, GIT_DIFF_INCLUDE_UNTRACKED))
  return 0;

 if (status == GIT_DELTA_UNREADABLE &&
  DIFF_FLAG_ISNT_SET(diff, GIT_DIFF_INCLUDE_UNREADABLE))
  return 0;

 if (!diff_pathspec_match(&matched_pathspec, diff, entry))
  return 0;

 delta = diff_delta__alloc(diff, status, entry->path);
 GIT_ERROR_CHECK_ALLOC(delta);


 assert(status != GIT_DELTA_MODIFIED);
 delta->nfiles = 1;

 if (has_old) {
  delta->old_file.mode = entry->mode;
  delta->old_file.size = entry->file_size;
  delta->old_file.flags |= GIT_DIFF_FLAG_EXISTS;
  git_oid_cpy(&delta->old_file.id, &entry->id);
  delta->old_file.id_abbrev = GIT_OID_HEXSZ;
 } else {
  delta->new_file.mode = entry->mode;
  delta->new_file.size = entry->file_size;
  delta->new_file.flags |= GIT_DIFF_FLAG_EXISTS;
  git_oid_cpy(&delta->new_file.id, &entry->id);
  delta->new_file.id_abbrev = GIT_OID_HEXSZ;
 }

 delta->old_file.flags |= GIT_DIFF_FLAG_VALID_ID;

 if (has_old || !git_oid_is_zero(&delta->new_file.id))
  delta->new_file.flags |= GIT_DIFF_FLAG_VALID_ID;

 return diff_insert_delta(diff, delta, matched_pathspec);
}

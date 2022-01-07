
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int noid ;
typedef int git_oid ;
struct TYPE_21__ {unsigned int mode; int flags; int flags_extended; scalar_t__ file_size; scalar_t__ ino; scalar_t__ uid; scalar_t__ gid; int path; int id; int ctime; int mtime; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
struct TYPE_22__ {int diffcaps; int base; } ;
typedef TYPE_2__ git_diff_generated ;
typedef int git_delta_t ;
struct TYPE_23__ {TYPE_8__* new_iter; TYPE_1__* nitem; TYPE_1__* oitem; } ;
typedef TYPE_3__ diff_in_progress ;
struct TYPE_24__ {scalar_t__ type; } ;


 scalar_t__ DIFF_FLAG_IS_SET (TYPE_2__*,int ) ;
 int GIT_DELTA_ADDED ;
 int GIT_DELTA_CONFLICTED ;
 int GIT_DELTA_DELETED ;
 int GIT_DELTA_MODIFIED ;
 int GIT_DELTA_TYPECHANGE ;
 int GIT_DELTA_UNMODIFIED ;
 int GIT_DELTA_UNREADABLE ;
 int GIT_DIFFCAPS_HAS_SYMLINKS ;
 int GIT_DIFFCAPS_TRUST_CTIME ;
 int GIT_DIFFCAPS_TRUST_MODE_BITS ;
 int GIT_DIFF_IGNORE_CASE ;
 int GIT_DIFF_IGNORE_SUBMODULES ;
 int GIT_DIFF_INCLUDE_CASECHANGE ;
 int GIT_DIFF_INCLUDE_TYPECHANGE ;
 int GIT_DIFF_UPDATE_INDEX ;
 unsigned int GIT_FILEMODE_UNREADABLE ;
 int GIT_INDEX_ENTRY_SKIP_WORKTREE ;
 int GIT_INDEX_ENTRY_VALID ;
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 scalar_t__ GIT_MODE_TYPE (unsigned int) ;
 unsigned int MODE_BITS_MASK ;
 scalar_t__ S_ISGITLINK (unsigned int) ;
 scalar_t__ S_ISLNK (unsigned int) ;
 scalar_t__ S_ISREG (unsigned int) ;
 int diff_delta__from_one (TYPE_2__*,int ,TYPE_1__ const*,TYPE_1__ const*) ;
 int diff_delta__from_two (TYPE_2__*,int ,TYPE_1__ const*,unsigned int,TYPE_1__ const*,unsigned int,int *,char const*) ;
 int diff_pathspec_match (char const**,TYPE_2__*,TYPE_1__ const*) ;
 int git_diff__oid_for_entry (int *,int *,TYPE_1__ const*,unsigned int,int const*) ;
 scalar_t__ git_index_entry_is_conflict (TYPE_1__ const*) ;
 scalar_t__ git_index_entry_newer_than_index (TYPE_1__ const*,int *) ;
 int git_index_time_eq (int *,int *) ;
 int * git_iterator_index (TYPE_8__*) ;
 scalar_t__ git_oid_equal (int *,int *) ;
 scalar_t__ git_oid_is_zero (int *) ;
 int maybe_modified_submodule (int *,int *,TYPE_2__*,TYPE_3__*) ;
 int memset (int *,int ,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int maybe_modified(
 git_diff_generated *diff,
 diff_in_progress *info)
{
 git_oid noid;
 git_delta_t status = GIT_DELTA_MODIFIED;
 const git_index_entry *oitem = info->oitem;
 const git_index_entry *nitem = info->nitem;
 unsigned int omode = oitem->mode;
 unsigned int nmode = nitem->mode;
 bool new_is_workdir = (info->new_iter->type == GIT_ITERATOR_TYPE_WORKDIR);
 bool modified_uncertain = 0;
 const char *matched_pathspec;
 int error = 0;

 if (!diff_pathspec_match(&matched_pathspec, diff, oitem))
  return 0;

 memset(&noid, 0, sizeof(noid));


 if (S_ISLNK(omode) && S_ISREG(nmode) && new_is_workdir &&
  !(diff->diffcaps & GIT_DIFFCAPS_HAS_SYMLINKS))
  nmode = omode;


 if (!(diff->diffcaps & GIT_DIFFCAPS_TRUST_MODE_BITS) &&
  (nmode & MODE_BITS_MASK) != (omode & MODE_BITS_MASK) &&
  new_is_workdir)
  nmode = (nmode & ~MODE_BITS_MASK) | (omode & MODE_BITS_MASK);


 if (git_index_entry_is_conflict(oitem) ||
   git_index_entry_is_conflict(nitem)) {
  status = GIT_DELTA_CONFLICTED;


 } else if ((oitem->flags & GIT_INDEX_ENTRY_VALID) != 0) {
  status = GIT_DELTA_UNMODIFIED;


 } else if ((oitem->flags_extended & GIT_INDEX_ENTRY_SKIP_WORKTREE) != 0) {
  status = GIT_DELTA_UNMODIFIED;


 } else if (GIT_MODE_TYPE(omode) != GIT_MODE_TYPE(nmode)) {
  if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_INCLUDE_TYPECHANGE)) {
   status = GIT_DELTA_TYPECHANGE;
  }

  else if (nmode == GIT_FILEMODE_UNREADABLE) {
   if (!(error = diff_delta__from_one(diff, GIT_DELTA_DELETED, oitem, ((void*)0))))
    error = diff_delta__from_one(diff, GIT_DELTA_UNREADABLE, ((void*)0), nitem);
   return error;
  }

  else {
   if (!(error = diff_delta__from_one(diff, GIT_DELTA_DELETED, oitem, ((void*)0))))
    error = diff_delta__from_one(diff, GIT_DELTA_ADDED, ((void*)0), nitem);
   return error;
  }


 } else if (git_oid_equal(&oitem->id, &nitem->id) &&
    omode == nmode &&
    !git_oid_is_zero(&oitem->id)) {
  status = GIT_DELTA_UNMODIFIED;




 } else if (git_oid_is_zero(&nitem->id) && new_is_workdir) {
  bool use_ctime =
   ((diff->diffcaps & GIT_DIFFCAPS_TRUST_CTIME) != 0);
  git_index *index = git_iterator_index(info->new_iter);

  status = GIT_DELTA_UNMODIFIED;

  if (S_ISGITLINK(nmode)) {
   if ((error = maybe_modified_submodule(&status, &noid, diff, info)) < 0)
    return error;
  }




  else if (omode != nmode || oitem->file_size != nitem->file_size) {
   status = GIT_DELTA_MODIFIED;
   modified_uncertain =
    (oitem->file_size <= 0 && nitem->file_size > 0);
  }
  else if (!git_index_time_eq(&oitem->mtime, &nitem->mtime) ||
   (use_ctime && !git_index_time_eq(&oitem->ctime, &nitem->ctime)) ||
   oitem->ino != nitem->ino ||
   oitem->uid != nitem->uid ||
   oitem->gid != nitem->gid ||
   git_index_entry_newer_than_index(nitem, index))
  {
   status = GIT_DELTA_MODIFIED;
   modified_uncertain = 1;
  }


 } else if (S_ISGITLINK(nmode) &&
    DIFF_FLAG_IS_SET(diff, GIT_DIFF_IGNORE_SUBMODULES)) {
  status = GIT_DELTA_UNMODIFIED;
 }




 if (modified_uncertain && git_oid_is_zero(&nitem->id)) {
  const git_oid *update_check =
   DIFF_FLAG_IS_SET(diff, GIT_DIFF_UPDATE_INDEX) && omode == nmode ?
   &oitem->id : ((void*)0);

  if ((error = git_diff__oid_for_entry(
    &noid, &diff->base, nitem, nmode, update_check)) < 0)
   return error;





  if (omode == nmode && !S_ISGITLINK(omode) &&
   git_oid_equal(&oitem->id, &noid))
   status = GIT_DELTA_UNMODIFIED;
 }





 if (DIFF_FLAG_IS_SET(diff, GIT_DIFF_IGNORE_CASE) &&
  DIFF_FLAG_IS_SET(diff, GIT_DIFF_INCLUDE_CASECHANGE) &&
  strcmp(oitem->path, nitem->path) != 0) {

  if (!(error = diff_delta__from_one(diff, GIT_DELTA_DELETED, oitem, ((void*)0))))
   error = diff_delta__from_one(diff, GIT_DELTA_ADDED, ((void*)0), nitem);

  return error;
 }

 return diff_delta__from_two(
  diff, status, oitem, omode, nitem, nmode,
  git_oid_is_zero(&noid) ? ((void*)0) : &noid, matched_pathspec);
}

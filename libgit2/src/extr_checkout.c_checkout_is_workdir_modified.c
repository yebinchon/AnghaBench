
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int git_submodule ;
typedef int git_oid ;
struct TYPE_12__ {scalar_t__ file_size; int mode; int id; int mtime; int path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_13__ {scalar_t__ size; int mode; int id; } ;
typedef TYPE_2__ git_diff_file ;
struct TYPE_14__ {int diff; int respect_filemode; int index; int repo; } ;
typedef TYPE_3__ checkout_data ;


 int GIT_FILEMODE_COMMIT ;
 int GIT_SUBMODULE_IGNORE_UNSPECIFIED ;
 scalar_t__ GIT_SUBMODULE_STATUS_IS_WD_DIRTY (unsigned int) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ git_diff__oid_for_entry (int *,int ,TYPE_1__ const*,int ,int *) ;
 int git_error_clear () ;
 TYPE_1__* git_index_get_bypath (int ,int ,int ) ;
 scalar_t__ git_index_time_eq (int *,int *) ;
 scalar_t__ git_oid__cmp (int *,int const*) ;
 int git_submodule_free (int *) ;
 scalar_t__ git_submodule_lookup (int **,int ,int ) ;
 scalar_t__ git_submodule_status (unsigned int*,int ,int ,int ) ;
 int * git_submodule_wd_id (int *) ;
 scalar_t__ is_filemode_changed (int ,int ,int ) ;
 int is_workdir_base_or_new (int *,TYPE_2__ const*,TYPE_2__ const*) ;

__attribute__((used)) static bool checkout_is_workdir_modified(
 checkout_data *data,
 const git_diff_file *baseitem,
 const git_diff_file *newitem,
 const git_index_entry *wditem)
{
 git_oid oid;
 const git_index_entry *ie;


 if (wditem->mode == GIT_FILEMODE_COMMIT) {
  git_submodule *sm;
  unsigned int sm_status = 0;
  const git_oid *sm_oid = ((void*)0);
  bool rval = 0;

  if (git_submodule_lookup(&sm, data->repo, wditem->path) < 0) {
   git_error_clear();
   return 1;
  }

  if (git_submodule_status(&sm_status, data->repo, wditem->path, GIT_SUBMODULE_IGNORE_UNSPECIFIED) < 0 ||
   GIT_SUBMODULE_STATUS_IS_WD_DIRTY(sm_status))
   rval = 1;
  else if ((sm_oid = git_submodule_wd_id(sm)) == ((void*)0))
   rval = 0;
  else
   rval = (git_oid__cmp(&baseitem->id, sm_oid) != 0);

  git_submodule_free(sm);
  return rval;
 }
 ie = git_index_get_bypath(data->index, wditem->path, 0);

 if (ie != ((void*)0) &&
  git_index_time_eq(&wditem->mtime, &ie->mtime) &&
  wditem->file_size == ie->file_size &&
  !is_filemode_changed(wditem->mode, ie->mode, data->respect_filemode)) {


  return !is_workdir_base_or_new(&ie->id, baseitem, newitem) ||
   is_filemode_changed(baseitem->mode, ie->mode, data->respect_filemode);
 }




 if (baseitem->size && wditem->file_size != baseitem->size)
  return 1;


 if (S_ISDIR(wditem->mode))
  return 0;

 if (is_filemode_changed(baseitem->mode, wditem->mode, data->respect_filemode))
  return 1;

 if (git_diff__oid_for_entry(&oid, data->diff, wditem, wditem->mode, ((void*)0)) < 0)
  return 0;




 return !is_workdir_base_or_new(&oid, baseitem, newitem);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef void* int32_t ;
struct TYPE_17__ {int flags; int wd_oid; int index_oid; int path; int repo; } ;
typedef TYPE_3__ git_submodule ;
typedef int git_repository ;
struct TYPE_16__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_15__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_18__ {TYPE_2__ mtime; TYPE_1__ ctime; int id; int path; } ;
typedef TYPE_4__ git_index_entry ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_19__ {int ptr; } ;
typedef TYPE_5__ git_buf ;
typedef int entry ;


 TYPE_5__ GIT_BUF_INIT ;
 int GIT_ERROR_SUBMODULE ;
 int GIT_INDEX_CAPABILITY_NO_FILEMODE ;
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ;
 int assert (TYPE_3__*) ;
 int git_buf_dispose (TYPE_5__*) ;
 int git_buf_joinpath (TYPE_5__*,int ,int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 scalar_t__ git_commit_time (int *) ;
 int git_error_set (int ,char*) ;
 int git_index_add (int *,TYPE_4__*) ;
 int git_index_caps (int *) ;
 int git_index_entry__init_from_stat (TYPE_4__*,struct stat*,int) ;
 int git_index_write (int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_repository_free (int *) ;
 int git_repository_index__weakptr (int **,int ) ;
 int git_repository_workdir (int ) ;
 int git_submodule_open (int **,TYPE_3__*) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ p_stat (int ,struct stat*) ;

int git_submodule_add_to_index(git_submodule *sm, int write_index)
{
 int error;
 git_repository *sm_repo = ((void*)0);
 git_index *index;
 git_buf path = GIT_BUF_INIT;
 git_commit *head;
 git_index_entry entry;
 struct stat st;

 assert(sm);


 sm->flags = sm->flags & ~GIT_SUBMODULE_STATUS__WD_OID_VALID;

 if ((error = git_repository_index__weakptr(&index, sm->repo)) < 0 ||
  (error = git_buf_joinpath(
   &path, git_repository_workdir(sm->repo), sm->path)) < 0 ||
  (error = git_submodule_open(&sm_repo, sm)) < 0)
  goto cleanup;


 if (p_stat(path.ptr, &st) < 0) {
  git_error_set(GIT_ERROR_SUBMODULE,
   "cannot add submodule without working directory");
  error = -1;
  goto cleanup;
 }

 memset(&entry, 0, sizeof(entry));
 entry.path = sm->path;
 git_index_entry__init_from_stat(
  &entry, &st, !(git_index_caps(index) & GIT_INDEX_CAPABILITY_NO_FILEMODE));


 if ((sm->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID) == 0) {
  git_error_set(GIT_ERROR_SUBMODULE,
   "cannot add submodule without HEAD to index");
  error = -1;
  goto cleanup;
 }
 git_oid_cpy(&entry.id, &sm->wd_oid);

 if ((error = git_commit_lookup(&head, sm_repo, &sm->wd_oid)) < 0)
  goto cleanup;

 entry.ctime.seconds = (int32_t)git_commit_time(head);
 entry.ctime.nanoseconds = 0;
 entry.mtime.seconds = (int32_t)git_commit_time(head);
 entry.mtime.nanoseconds = 0;

 git_commit_free(head);


 error = git_index_add(index, &entry);


 if (!error && write_index) {
  error = git_index_write(index);

  if (!error)
   git_oid_cpy(&sm->index_oid, &sm->wd_oid);
 }

cleanup:
 git_repository_free(sm_repo);
 git_buf_dispose(&path);
 return error;
}

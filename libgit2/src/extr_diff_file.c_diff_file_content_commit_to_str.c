
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int oid ;
typedef int git_submodule ;
typedef int git_oid ;
struct TYPE_6__ {int data; int len; } ;
struct TYPE_7__ {int flags; TYPE_2__ map; TYPE_1__* file; int repo; } ;
typedef TYPE_3__ git_diff_file_content ;
typedef int git_buf ;
struct TYPE_5__ {int flags; int id; int path; } ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_FLAG_VALID_ID ;
 int GIT_DIFF_FLAG__FREE_DATA ;
 int GIT_EEXISTS ;
 int GIT_OID_HEXSZ ;
 int GIT_SUBMODULE_IGNORE_UNSPECIFIED ;
 scalar_t__ GIT_SUBMODULE_STATUS_IS_WD_DIRTY (unsigned int) ;
 int git_buf_detach (int *) ;
 int git_buf_len (int *) ;
 scalar_t__ git_buf_printf (int *,char*,char*,char const*) ;
 int git_error_clear () ;
 int git_oid_cpy (int *,int const*) ;
 int git_oid_tostr (char*,int,int *) ;
 int git_submodule_free (int *) ;
 int * git_submodule_head_id (int *) ;
 int git_submodule_lookup (int **,int ,int ) ;
 int git_submodule_status (unsigned int*,int ,int ,int ) ;
 int * git_submodule_wd_id (int *) ;

__attribute__((used)) static int diff_file_content_commit_to_str(
 git_diff_file_content *fc, bool check_status)
{
 char oid[GIT_OID_HEXSZ+1];
 git_buf content = GIT_BUF_INIT;
 const char *status = "";

 if (check_status) {
  int error = 0;
  git_submodule *sm = ((void*)0);
  unsigned int sm_status = 0;
  const git_oid *sm_head;

  if ((error = git_submodule_lookup(&sm, fc->repo, fc->file->path)) < 0) {

   if (error == GIT_EEXISTS) {
    git_error_clear();
    error = 0;
   }
   return error;
  }

  if ((error = git_submodule_status(&sm_status, fc->repo, fc->file->path, GIT_SUBMODULE_IGNORE_UNSPECIFIED)) < 0) {
   git_submodule_free(sm);
   return error;
  }


  if ((fc->file->flags & GIT_DIFF_FLAG_VALID_ID) == 0 &&
   ((sm_head = git_submodule_wd_id(sm)) != ((void*)0) ||
    (sm_head = git_submodule_head_id(sm)) != ((void*)0)))
  {
   git_oid_cpy(&fc->file->id, sm_head);
   fc->file->flags |= GIT_DIFF_FLAG_VALID_ID;
  }

  if (GIT_SUBMODULE_STATUS_IS_WD_DIRTY(sm_status))
   status = "-dirty";

  git_submodule_free(sm);
 }

 git_oid_tostr(oid, sizeof(oid), &fc->file->id);
 if (git_buf_printf(&content, "Subproject commit %s%s\n", oid, status) < 0)
  return -1;

 fc->map.len = git_buf_len(&content);
 fc->map.data = git_buf_detach(&content);
 fc->flags |= GIT_DIFF_FLAG__FREE_DATA;

 return 0;
}

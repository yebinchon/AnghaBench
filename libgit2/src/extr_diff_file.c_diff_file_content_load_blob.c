
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_odb_object ;
typedef int git_object ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_2__ git_diff_options ;
struct TYPE_9__ {size_t len; void* data; } ;
struct TYPE_11__ {int blob; TYPE_1__ map; int flags; TYPE_4__* file; int repo; } ;
typedef TYPE_3__ git_diff_file_content ;
typedef int git_blob ;
struct TYPE_12__ {scalar_t__ mode; int id; int size; } ;


 int GIT_DIFF_FLAG__FREE_BLOB ;
 int GIT_DIFF_SHOW_BINARY ;
 scalar_t__ GIT_FILEMODE_COMMIT ;
 int GIT_OBJECT_BLOB ;
 scalar_t__ diff_file_content_binary_by_size (TYPE_3__*) ;
 int diff_file_content_commit_to_str (TYPE_3__*,int) ;
 int git_blob_lookup (int **,int ,int *) ;
 scalar_t__ git_blob_rawcontent (int ) ;
 scalar_t__ git_blob_rawsize (int ) ;
 int git_diff_file__resolve_zero_size (TYPE_4__*,int **,int ) ;
 int git_object__from_odb_object (int **,int ,int *,int ) ;
 int git_odb_object_free (int *) ;
 scalar_t__ git_oid_is_zero (int *) ;

__attribute__((used)) static int diff_file_content_load_blob(
 git_diff_file_content *fc,
 git_diff_options *opts)
{
 int error = 0;
 git_odb_object *odb_obj = ((void*)0);

 if (git_oid_is_zero(&fc->file->id))
  return 0;

 if (fc->file->mode == GIT_FILEMODE_COMMIT)
  return diff_file_content_commit_to_str(fc, 0);


 if (!fc->file->size) {
  if ((error = git_diff_file__resolve_zero_size(
    fc->file, &odb_obj, fc->repo)) < 0)
   return error;
 }

 if ((opts->flags & GIT_DIFF_SHOW_BINARY) == 0 &&
  diff_file_content_binary_by_size(fc))
  return 0;

 if (odb_obj != ((void*)0)) {
  error = git_object__from_odb_object(
   (git_object **)&fc->blob, fc->repo, odb_obj, GIT_OBJECT_BLOB);
  git_odb_object_free(odb_obj);
 } else {
  error = git_blob_lookup(
   (git_blob **)&fc->blob, fc->repo, &fc->file->id);
 }

 if (!error) {
  fc->flags |= GIT_DIFF_FLAG__FREE_BLOB;
  fc->map.data = (void *)git_blob_rawcontent(fc->blob);
  fc->map.len = (size_t)git_blob_rawsize(fc->blob);
 }

 return error;
}

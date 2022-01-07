
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_diff_options ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_10__ {TYPE_2__* file; TYPE_1__ map; int repo; } ;
typedef TYPE_3__ git_diff_file_content ;
typedef int git_buf ;
struct TYPE_9__ {scalar_t__ mode; int flags; int id; int path; } ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_FLAG_VALID_ID ;
 scalar_t__ GIT_FILEMODE_COMMIT ;
 scalar_t__ GIT_FILEMODE_TREE ;
 int GIT_OBJECT_BLOB ;
 scalar_t__ S_ISLNK (scalar_t__) ;
 int diff_file_content_commit_to_str (TYPE_3__*,int) ;
 int diff_file_content_load_workdir_file (TYPE_3__*,int *,int *) ;
 int diff_file_content_load_workdir_symlink (TYPE_3__*,int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,int ) ;
 int git_odb_hash (int *,int ,int ,int ) ;
 int git_repository_workdir (int ) ;

__attribute__((used)) static int diff_file_content_load_workdir(
 git_diff_file_content *fc,
 git_diff_options *diff_opts)
{
 int error = 0;
 git_buf path = GIT_BUF_INIT;

 if (fc->file->mode == GIT_FILEMODE_COMMIT)
  return diff_file_content_commit_to_str(fc, 1);

 if (fc->file->mode == GIT_FILEMODE_TREE)
  return 0;

 if (git_buf_joinpath(
   &path, git_repository_workdir(fc->repo), fc->file->path) < 0)
  return -1;

 if (S_ISLNK(fc->file->mode))
  error = diff_file_content_load_workdir_symlink(fc, &path);
 else
  error = diff_file_content_load_workdir_file(fc, &path, diff_opts);


 if (!error && (fc->file->flags & GIT_DIFF_FLAG_VALID_ID) == 0) {
  error = git_odb_hash(
   &fc->file->id, fc->map.data, fc->map.len, GIT_OBJECT_BLOB);
  fc->file->flags |= GIT_DIFF_FLAG_VALID_ID;
 }

 git_buf_dispose(&path);
 return error;
}

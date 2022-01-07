
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int git_oid ;
typedef int git_blob ;
struct TYPE_5__ {int strategy; int repo; } ;
typedef TYPE_1__ checkout_data ;


 int GIT_CHECKOUT_ALLOW_CONFLICTS ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 scalar_t__ S_ISLNK (unsigned int) ;
 int blob_content_to_file (TYPE_1__*,struct stat*,int *,char const*,char const*,unsigned int) ;
 int blob_content_to_link (TYPE_1__*,struct stat*,int *,char const*) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int const*) ;
 int git_error_clear () ;

__attribute__((used)) static int checkout_write_content(
 checkout_data *data,
 const git_oid *oid,
 const char *full_path,
 const char *hint_path,
 unsigned int mode,
 struct stat *st)
{
 int error = 0;
 git_blob *blob;

 if ((error = git_blob_lookup(&blob, data->repo, oid)) < 0)
  return error;

 if (S_ISLNK(mode))
  error = blob_content_to_link(data, st, blob, full_path);
 else
  error = blob_content_to_file(data, st, blob, full_path, hint_path, mode);

 git_blob_free(blob);





 if ((data->strategy & GIT_CHECKOUT_ALLOW_CONFLICTS) != 0 &&
  (error == GIT_ENOTFOUND || error == GIT_EEXISTS))
 {
  git_error_clear();
  error = 0;
 }

 return error;
}

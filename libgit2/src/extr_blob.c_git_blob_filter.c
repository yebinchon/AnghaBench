
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_filter_list ;
typedef int git_filter_flag_t ;
typedef int git_buf ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_blob_filter_options ;
typedef int git_blob ;


 int GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD ;
 int GIT_BLOB_FILTER_CHECK_FOR_BINARY ;
 int GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES ;
 TYPE_1__ GIT_BLOB_FILTER_OPTIONS_INIT ;
 int GIT_BLOB_FILTER_OPTIONS_VERSION ;
 int GIT_ERROR_CHECK_VERSION (TYPE_1__*,int ,char*) ;
 int GIT_FILTER_ATTRIBUTES_FROM_HEAD ;
 int GIT_FILTER_DEFAULT ;
 int GIT_FILTER_NO_SYSTEM_ATTRIBUTES ;
 int GIT_FILTER_TO_WORKTREE ;
 int assert (int) ;
 scalar_t__ git_blob_is_binary (int *) ;
 int git_blob_owner (int *) ;
 int git_buf_sanitize (int *) ;
 int git_filter_list_apply_to_blob (int *,int *,int *) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int ,int *,char const*,int ,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

int git_blob_filter(
 git_buf *out,
 git_blob *blob,
 const char *path,
 git_blob_filter_options *given_opts)
{
 int error = 0;
 git_filter_list *fl = ((void*)0);
 git_blob_filter_options opts = GIT_BLOB_FILTER_OPTIONS_INIT;
 git_filter_flag_t flags = GIT_FILTER_DEFAULT;

 assert(blob && path && out);

 git_buf_sanitize(out);

 GIT_ERROR_CHECK_VERSION(
  given_opts, GIT_BLOB_FILTER_OPTIONS_VERSION, "git_blob_filter_options");

 if (given_opts != ((void*)0))
  memcpy(&opts, given_opts, sizeof(git_blob_filter_options));

 if ((opts.flags & GIT_BLOB_FILTER_CHECK_FOR_BINARY) != 0 &&
     git_blob_is_binary(blob))
  return 0;

 if ((opts.flags & GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES) != 0)
  flags |= GIT_FILTER_NO_SYSTEM_ATTRIBUTES;

 if ((opts.flags & GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD) != 0)
  flags |= GIT_FILTER_ATTRIBUTES_FROM_HEAD;

 if (!(error = git_filter_list_load(
   &fl, git_blob_owner(blob), blob, path,
   GIT_FILTER_TO_WORKTREE, flags))) {

  error = git_filter_list_apply_to_blob(out, fl, blob);

  git_filter_list_free(fl);
 }

 return error;
}

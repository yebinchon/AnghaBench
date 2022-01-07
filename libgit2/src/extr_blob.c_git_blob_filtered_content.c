
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_buf ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_blob_filter_options ;
typedef int git_blob ;


 int GIT_BLOB_FILTER_CHECK_FOR_BINARY ;
 TYPE_1__ GIT_BLOB_FILTER_OPTIONS_INIT ;
 int git_blob_filter (int *,int *,char const*,TYPE_1__*) ;

int git_blob_filtered_content(
 git_buf *out,
 git_blob *blob,
 const char *path,
 int check_for_binary_data)
{
 git_blob_filter_options opts = GIT_BLOB_FILTER_OPTIONS_INIT;

 if (check_for_binary_data)
  opts.flags |= GIT_BLOB_FILTER_CHECK_FOR_BINARY;
 else
  opts.flags &= ~GIT_BLOB_FILTER_CHECK_FOR_BINARY;

 return git_blob_filter(out, blob, path, &opts);
}

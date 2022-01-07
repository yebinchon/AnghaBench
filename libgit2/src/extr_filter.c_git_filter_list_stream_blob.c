
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_writestream ;
struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {TYPE_1__ source; } ;
typedef TYPE_2__ git_filter_list ;
typedef int git_buf ;
typedef int git_blob ;


 int GIT_BUF_INIT ;
 scalar_t__ buf_from_blob (int *,int *) ;
 int git_blob_id (int *) ;
 int git_filter_list_stream_data (TYPE_2__*,int *,int *) ;
 int git_oid_cpy (int *,int ) ;

int git_filter_list_stream_blob(
 git_filter_list *filters,
 git_blob *blob,
 git_writestream *target)
{
 git_buf in = GIT_BUF_INIT;

 if (buf_from_blob(&in, blob) < 0)
  return -1;

 if (filters)
  git_oid_cpy(&filters->source.oid, git_blob_id(blob));

 return git_filter_list_stream_data(filters, &in, target);
}

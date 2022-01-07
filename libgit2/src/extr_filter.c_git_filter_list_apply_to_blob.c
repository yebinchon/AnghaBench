
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_stream {int complete; int parent; } ;
typedef int git_filter_list ;
typedef int git_buf ;
typedef int git_blob ;


 int assert (int ) ;
 int buf_stream_init (struct buf_stream*,int *) ;
 int git_filter_list_stream_blob (int *,int *,int *) ;

int git_filter_list_apply_to_blob(
 git_buf *out,
 git_filter_list *filters,
 git_blob *blob)
{
 struct buf_stream writer;
 int error;

 buf_stream_init(&writer, out);

 if ((error = git_filter_list_stream_blob(
  filters, blob, &writer.parent)) < 0)
   return error;

 assert(writer.complete);
 return error;
}

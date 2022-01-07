
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_stream {int complete; int parent; } ;
typedef int git_repository ;
typedef int git_filter_list ;
typedef int git_buf ;


 int assert (int ) ;
 int buf_stream_init (struct buf_stream*,int *) ;
 int git_filter_list_stream_file (int *,int *,char const*,int *) ;

int git_filter_list_apply_to_file(
 git_buf *out,
 git_filter_list *filters,
 git_repository *repo,
 const char *path)
{
 struct buf_stream writer;
 int error;

 buf_stream_init(&writer, out);

 if ((error = git_filter_list_stream_file(
  filters, repo, path, &writer.parent)) < 0)
   return error;

 assert(writer.complete);
 return error;
}

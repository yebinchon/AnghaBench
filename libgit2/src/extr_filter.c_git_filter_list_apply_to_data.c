
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct buf_stream {int complete; int parent; } ;
typedef int git_filter_list ;
struct TYPE_8__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int assert (int ) ;
 int buf_stream_init (struct buf_stream*,TYPE_1__*) ;
 int git_buf_attach_notowned (TYPE_1__*,int ,int ) ;
 int git_buf_sanitize (TYPE_1__*) ;
 int git_filter_list_stream_data (int *,TYPE_1__*,int *) ;

int git_filter_list_apply_to_data(
 git_buf *tgt, git_filter_list *filters, git_buf *src)
{
 struct buf_stream writer;
 int error;

 git_buf_sanitize(tgt);
 git_buf_sanitize(src);

 if (!filters) {
  git_buf_attach_notowned(tgt, src->ptr, src->size);
  return 0;
 }

 buf_stream_init(&writer, tgt);

 if ((error = git_filter_list_stream_data(filters, src,
  &writer.parent)) < 0)
   return error;

 assert(writer.complete);
 return error;
}

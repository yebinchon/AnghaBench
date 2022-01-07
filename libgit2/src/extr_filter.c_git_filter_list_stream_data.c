
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int (* write ) (TYPE_1__*,int ,int ) ;int (* close ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_writestream ;
typedef int git_vector ;
typedef int git_filter_list ;
struct TYPE_11__ {int size; int ptr; } ;
typedef TYPE_2__ git_buf ;


 int GIT_VECTOR_INIT ;
 int git_buf_sanitize (TYPE_2__*) ;
 int stream_list_free (int *) ;
 int stream_list_init (TYPE_1__**,int *,int *,TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ,int ) ;
 int stub2 (TYPE_1__*) ;

int git_filter_list_stream_data(
 git_filter_list *filters,
 git_buf *data,
 git_writestream *target)
{
 git_vector filter_streams = GIT_VECTOR_INIT;
 git_writestream *stream_start;
 int error, initialized = 0;

 git_buf_sanitize(data);

 if ((error = stream_list_init(&stream_start, &filter_streams, filters, target)) < 0)
  goto out;
 initialized = 1;

 if ((error = stream_start->write(
   stream_start, data->ptr, data->size)) < 0)
  goto out;

out:
 if (initialized)
  error |= stream_start->close(stream_start);

 stream_list_free(&filter_streams);
 return error;
}

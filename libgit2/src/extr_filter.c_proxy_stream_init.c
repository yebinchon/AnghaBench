
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free; int close; int write; } ;
struct proxy_stream {void** payload; int temp_buf; int * output; int * target; int const* source; int * filter; TYPE_1__ parent; } ;
typedef int git_writestream ;
typedef int git_filter_source ;
typedef int git_filter ;
typedef int git_buf ;


 int GIT_ERROR_CHECK_ALLOC (struct proxy_stream*) ;
 struct proxy_stream* git__calloc (int,int) ;
 int git_buf_clear (int *) ;
 int proxy_stream_close ;
 int proxy_stream_free ;
 int proxy_stream_write ;

__attribute__((used)) static int proxy_stream_init(
 git_writestream **out,
 git_filter *filter,
 git_buf *temp_buf,
 void **payload,
 const git_filter_source *source,
 git_writestream *target)
{
 struct proxy_stream *proxy_stream = git__calloc(1, sizeof(struct proxy_stream));
 GIT_ERROR_CHECK_ALLOC(proxy_stream);

 proxy_stream->parent.write = proxy_stream_write;
 proxy_stream->parent.close = proxy_stream_close;
 proxy_stream->parent.free = proxy_stream_free;
 proxy_stream->filter = filter;
 proxy_stream->payload = payload;
 proxy_stream->source = source;
 proxy_stream->target = target;
 proxy_stream->output = temp_buf ? temp_buf : &proxy_stream->temp_buf;

 if (temp_buf)
  git_buf_clear(temp_buf);

 *out = (git_writestream *)proxy_stream;
 return 0;
}

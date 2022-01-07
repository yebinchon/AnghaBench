
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free; int close; int write; } ;
struct compress_stream {int mode; int * next; TYPE_1__ parent; } ;
typedef int git_writestream ;
typedef int git_filter_source ;
typedef void* git_filter ;


 int GIT_UNUSED (void**) ;
 int cl_assert (struct compress_stream*) ;
 int compress_stream_close ;
 int compress_stream_free ;
 int compress_stream_write ;
 struct compress_stream* git__calloc (int,int) ;
 int git_filter_source_mode (int const*) ;

__attribute__((used)) static int compress_filter_stream_init(
 git_writestream **out,
 git_filter *self,
 void **payload,
 const git_filter_source *src,
 git_writestream *next)
{
 struct compress_stream *stream = git__calloc(1, sizeof(struct compress_stream));
 cl_assert(stream);

 GIT_UNUSED(self);
 GIT_UNUSED(payload);

 stream->parent.write = compress_stream_write;
 stream->parent.close = compress_stream_close;
 stream->parent.free = compress_stream_free;
 stream->next = next;
 stream->mode = git_filter_source_mode(src);

 *out = (git_writestream *)stream;
 return 0;
}

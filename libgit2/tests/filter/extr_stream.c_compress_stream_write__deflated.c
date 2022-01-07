
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct compress_stream {scalar_t__ current_chunk; char current; TYPE_1__* next; } ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,char*,int) ;} ;


 scalar_t__ CHUNKSIZE ;
 int cl_git_pass (int ) ;
 size_t min (size_t,size_t) ;
 int stub1 (TYPE_1__*,char*,int) ;

__attribute__((used)) static int compress_stream_write__deflated(struct compress_stream *stream, const char *buffer, size_t len)
{
 size_t idx = 0;

 while (len > 0) {
  size_t chunkremain, chunksize;

  if (stream->current_chunk == 0)
   stream->current = buffer[idx];

  chunkremain = CHUNKSIZE - stream->current_chunk;
  chunksize = min(chunkremain, len);

  stream->current_chunk += chunksize;
  len -= chunksize;
  idx += chunksize;

  if (stream->current_chunk == CHUNKSIZE) {
   cl_git_pass(stream->next->write(stream->next, &stream->current, 1));
   stream->current_chunk = 0;
  }
 }

 return 0;
}

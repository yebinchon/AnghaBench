
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free; int write; int read; } ;
struct fuzzer_stream {TYPE_1__ base; scalar_t__ endp; scalar_t__ readp; } ;
struct fuzzer_buffer {scalar_t__ size; scalar_t__ data; } ;


 int fuzzer_stream_free ;
 int fuzzer_stream_read ;
 int fuzzer_stream_write ;
 struct fuzzer_stream* malloc (int) ;

__attribute__((used)) static int fuzzer_stream_new(
 struct fuzzer_stream **out,
 const struct fuzzer_buffer *data)
{
 struct fuzzer_stream *stream = malloc(sizeof(*stream));
 if (!stream)
  return -1;

 stream->readp = data->data;
 stream->endp = data->data + data->size;
 stream->base.read = fuzzer_stream_read;
 stream->base.write = fuzzer_stream_write;
 stream->base.free = fuzzer_stream_free;

 *out = stream;

 return 0;
}

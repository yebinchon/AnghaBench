
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int width; int channels; } ;
struct TYPE_5__ {int pos; TYPE_1__ info; int file; } ;
typedef TYPE_2__ snd_stream_t ;


 int FS_Read (void*,int,int ) ;
 int S_ByteSwapRawSamples (int,int,int,void*) ;

int S_WAV_CodecReadStream(snd_stream_t *stream, int bytes, void *buffer)
{
 int remaining = stream->info.size - stream->pos;
 int samples;

 if(remaining <= 0)
  return 0;
 if(bytes > remaining)
  bytes = remaining;
 stream->pos += bytes;
 samples = (bytes / stream->info.width) / stream->info.channels;
 FS_Read(buffer, bytes, stream->file);
 S_ByteSwapRawSamples(samples, stream->info.width, stream->info.channels, buffer);
 return bytes;
}

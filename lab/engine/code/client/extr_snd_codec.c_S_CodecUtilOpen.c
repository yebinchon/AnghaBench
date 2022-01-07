
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__ file; int * codec; } ;
typedef TYPE_1__ snd_stream_t ;
typedef int snd_codec_t ;
typedef scalar_t__ fileHandle_t ;


 int Com_DPrintf (char*,char const*) ;
 int FS_FCloseFile (scalar_t__) ;
 int FS_FOpenFileRead (char const*,scalar_t__*,int ) ;
 TYPE_1__* Z_Malloc (int) ;
 int qtrue ;

snd_stream_t *S_CodecUtilOpen(const char *filename, snd_codec_t *codec)
{
 snd_stream_t *stream;
 fileHandle_t hnd;
 int length;


 length = FS_FOpenFileRead(filename, &hnd, qtrue);
 if(!hnd)
 {
  Com_DPrintf("Can't read sound file %s\n", filename);
  return ((void*)0);
 }


 stream = Z_Malloc(sizeof(snd_stream_t));
 if(!stream)
 {
  FS_FCloseFile(hnd);
  return ((void*)0);
 }


 stream->codec = codec;
 stream->file = hnd;
 stream->length = length;
 return stream;
}

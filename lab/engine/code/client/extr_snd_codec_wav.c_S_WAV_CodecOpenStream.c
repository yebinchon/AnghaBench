
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int info; int file; } ;
typedef TYPE_1__ snd_stream_t ;


 int S_CodecUtilClose (TYPE_1__**) ;
 TYPE_1__* S_CodecUtilOpen (char const*,int *) ;
 int S_ReadRIFFHeader (int ,int *) ;
 int wav_codec ;

snd_stream_t *S_WAV_CodecOpenStream(const char *filename)
{
 snd_stream_t *rv;


 rv = S_CodecUtilOpen(filename, &wav_codec);
 if(!rv)
  return ((void*)0);


 if(!S_ReadRIFFHeader(rv->file, &rv->info))
 {
  S_CodecUtilClose(&rv);
  return ((void*)0);
 }

 return rv;
}

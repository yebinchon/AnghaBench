
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_stream_t ;


 int S_CodecUtilClose (int **) ;

void S_WAV_CodecCloseStream(snd_stream_t *stream)
{
 S_CodecUtilClose(&stream);
}

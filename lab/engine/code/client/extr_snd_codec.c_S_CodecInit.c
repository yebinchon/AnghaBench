
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_CodecRegister (int *) ;
 int * codecs ;
 int ogg_codec ;
 int opus_codec ;
 int wav_codec ;

void S_CodecInit()
{
 codecs = ((void*)0);
 S_CodecRegister(&wav_codec);
}

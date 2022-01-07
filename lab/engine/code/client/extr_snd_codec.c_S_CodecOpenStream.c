
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_stream_t ;


 int * S_CodecGetSound (char const*,int *) ;

snd_stream_t *S_CodecOpenStream(const char *filename)
{
 return S_CodecGetSound(filename, ((void*)0));
}

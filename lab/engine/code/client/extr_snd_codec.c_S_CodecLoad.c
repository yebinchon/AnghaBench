
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_info_t ;


 void* S_CodecGetSound (char const*,int *) ;

void *S_CodecLoad(const char *filename, snd_info_t *info)
{
 return S_CodecGetSound(filename, info);
}

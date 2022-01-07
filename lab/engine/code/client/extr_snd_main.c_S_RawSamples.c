
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int (* RawSamples ) (int,int,int,int,int,int const*,float,int) ;} ;


 TYPE_1__ si ;
 int stub1 (int,int,int,int,int,int const*,float,int) ;

void S_RawSamples (int stream, int samples, int rate, int width, int channels,
     const byte *data, float volume, int entityNum)
{
 if(si.RawSamples)
  si.RawSamples(stream, samples, rate, width, channels, data, volume, entityNum);
}

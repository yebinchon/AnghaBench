
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfx_t ;
typedef int channel_t ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int S_PaintChannelFrom16_altivec (int ,int ,int *,int const*,int,int,int) ;
 int S_PaintChannelFrom16_scalar (int *,int const*,int,int,int) ;
 TYPE_1__* com_altivec ;
 int paintbuffer ;
 int snd_vol ;

__attribute__((used)) static void S_PaintChannelFrom16( channel_t *ch, const sfx_t *sc, int count, int sampleOffset, int bufferOffset ) {







 S_PaintChannelFrom16_scalar( ch, sc, count, sampleOffset, bufferOffset );
}

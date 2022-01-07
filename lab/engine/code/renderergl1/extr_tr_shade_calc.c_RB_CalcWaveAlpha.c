
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int waveForm_t ;
struct TYPE_2__ {int numVertexes; } ;


 float EvalWaveFormClamped (int const*) ;
 TYPE_1__ tess ;

void RB_CalcWaveAlpha( const waveForm_t *wf, unsigned char *dstColors )
{
 int i;
 int v;
 float glow;

 glow = EvalWaveFormClamped( wf );

 v = 255 * glow;

 for ( i = 0; i < tess.numVertexes; i++, dstColors += 4 )
 {
  dstColors[3] = v;
 }
}

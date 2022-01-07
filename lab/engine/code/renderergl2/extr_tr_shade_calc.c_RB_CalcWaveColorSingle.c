
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ func; float base; int phase; int frequency; float amplitude; } ;
typedef TYPE_1__ waveForm_t ;
struct TYPE_8__ {int shaderTime; } ;
struct TYPE_7__ {float identityLight; } ;


 float EvalWaveForm (TYPE_1__ const*) ;
 scalar_t__ GF_NOISE ;
 float R_NoiseGet4f (int ,int ,int ,int) ;
 TYPE_3__ tess ;
 TYPE_2__ tr ;

float RB_CalcWaveColorSingle( const waveForm_t *wf )
{
 float glow;

 if ( wf->func == GF_NOISE ) {
  glow = wf->base + R_NoiseGet4f( 0, 0, 0, ( tess.shaderTime + wf->phase ) * wf->frequency ) * wf->amplitude;
 } else {
  glow = EvalWaveForm( wf ) * tr.identityLight;
 }

 if ( glow < 0 ) {
  glow = 0;
 }
 else if ( glow > 1 ) {
  glow = 1;
 }

 return glow;
}

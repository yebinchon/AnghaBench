
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float phase; float frequency; float amplitude; } ;
typedef TYPE_1__ waveForm_t ;
struct TYPE_5__ {float shaderTime; } ;


 TYPE_2__ tess ;

void RB_CalcTurbulentFactors( const waveForm_t *wf, float *amplitude, float *now )
{
 *now = wf->phase + tess.shaderTime * wf->frequency;
 *amplitude = wf->amplitude;
}

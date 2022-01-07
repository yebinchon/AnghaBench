
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int waveForm_t ;


 float EvalWaveForm (int const*) ;

__attribute__((used)) static float EvalWaveFormClamped( const waveForm_t *wf )
{
 float glow = EvalWaveForm( wf );

 if ( glow < 0 )
 {
  return 0;
 }

 if ( glow > 1 )
 {
  return 1;
 }

 return glow;
}

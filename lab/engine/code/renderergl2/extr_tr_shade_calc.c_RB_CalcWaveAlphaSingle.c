
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int waveForm_t ;


 float EvalWaveFormClamped (int const*) ;

float RB_CalcWaveAlphaSingle( const waveForm_t *wf )
{
 return EvalWaveFormClamped( wf );
}

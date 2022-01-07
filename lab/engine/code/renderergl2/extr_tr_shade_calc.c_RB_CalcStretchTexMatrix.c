
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int waveForm_t ;


 float EvalWaveForm (int const*) ;

void RB_CalcStretchTexMatrix( const waveForm_t *wf, float *matrix )
{
 float p;

 p = 1.0f / EvalWaveForm( wf );

 matrix[0] = p; matrix[2] = 0; matrix[4] = 0.5f - 0.5f * p;
 matrix[1] = 0; matrix[3] = p; matrix[5] = 0.5f - 0.5f * p;
}

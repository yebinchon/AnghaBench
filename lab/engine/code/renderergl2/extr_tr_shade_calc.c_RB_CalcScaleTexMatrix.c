
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void RB_CalcScaleTexMatrix( const float scale[2], float *matrix )
{
 matrix[0] = scale[0]; matrix[2] = 0.0f; matrix[4] = 0.0f;
 matrix[1] = 0.0f; matrix[3] = scale[1]; matrix[5] = 0.0f;
}

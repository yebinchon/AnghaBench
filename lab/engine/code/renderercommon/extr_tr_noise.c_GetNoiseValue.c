
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INDEX (int,int,int,int) ;
 float* s_noise_table ;

__attribute__((used)) static float GetNoiseValue( int x, int y, int z, int t )
{
 int index = INDEX( ( int ) x, ( int ) y, ( int ) z, ( int ) t );

 return s_noise_table[index];
}

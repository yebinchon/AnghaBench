
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOISE_SIZE ;
 scalar_t__ RAND_MAX ;
 float rand () ;
 unsigned char* s_noise_perm ;
 float* s_noise_table ;

void R_NoiseInit( void )
{
 int i;

 for ( i = 0; i < NOISE_SIZE; i++ )
 {
  s_noise_table[i] = ( float ) ( ( ( rand() / ( float ) RAND_MAX ) * 2.0 - 1.0 ) );
  s_noise_perm[i] = ( unsigned char ) ( rand() / ( float ) RAND_MAX * 255 );
 }
}

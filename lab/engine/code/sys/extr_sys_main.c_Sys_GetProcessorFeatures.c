
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuFeatures_t ;


 int CF_3DNOW ;
 int CF_ALTIVEC ;
 int CF_MMX ;
 int CF_RDTSC ;
 int CF_SSE ;
 int CF_SSE2 ;
 scalar_t__ SDL_Has3DNow () ;
 scalar_t__ SDL_HasAltiVec () ;
 scalar_t__ SDL_HasMMX () ;
 scalar_t__ SDL_HasRDTSC () ;
 scalar_t__ SDL_HasSSE () ;
 scalar_t__ SDL_HasSSE2 () ;

cpuFeatures_t Sys_GetProcessorFeatures( void )
{
 cpuFeatures_t features = 0;


 if( SDL_HasRDTSC( ) ) features |= CF_RDTSC;
 if( SDL_Has3DNow( ) ) features |= CF_3DNOW;
 if( SDL_HasMMX( ) ) features |= CF_MMX;
 if( SDL_HasSSE( ) ) features |= CF_SSE;
 if( SDL_HasSSE2( ) ) features |= CF_SSE2;
 if( SDL_HasAltiVec( ) ) features |= CF_ALTIVEC;


 return features;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int h; } ;
typedef TYPE_1__ SDL_Rect ;


 scalar_t__ displayAspect ;
 float fabs (scalar_t__) ;

__attribute__((used)) static int GLimp_CompareModes( const void *a, const void *b )
{
 const float ASPECT_EPSILON = 0.001f;
 SDL_Rect *modeA = (SDL_Rect *)a;
 SDL_Rect *modeB = (SDL_Rect *)b;
 float aspectA = (float)modeA->w / (float)modeA->h;
 float aspectB = (float)modeB->w / (float)modeB->h;
 int areaA = modeA->w * modeA->h;
 int areaB = modeB->w * modeB->h;
 float aspectDiffA = fabs( aspectA - displayAspect );
 float aspectDiffB = fabs( aspectB - displayAspect );
 float aspectDiffsDiff = aspectDiffA - aspectDiffB;

 if( aspectDiffsDiff > ASPECT_EPSILON )
  return 1;
 else if( aspectDiffsDiff < -ASPECT_EPSILON )
  return -1;
 else
  return areaA - areaB;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double shaderTime; } ;


 double floor (double) ;
 TYPE_1__ tess ;

void RB_CalcScrollTexMatrix( const float scrollSpeed[2], float *matrix )
{
 double timeScale = tess.shaderTime;
 double adjustedScrollS, adjustedScrollT;

 adjustedScrollS = scrollSpeed[0] * timeScale;
 adjustedScrollT = scrollSpeed[1] * timeScale;



 adjustedScrollS = adjustedScrollS - floor( adjustedScrollS );
 adjustedScrollT = adjustedScrollT - floor( adjustedScrollT );

 matrix[0] = 1.0f; matrix[2] = 0.0f; matrix[4] = adjustedScrollS;
 matrix[1] = 0.0f; matrix[3] = 1.0f; matrix[5] = adjustedScrollT;
}

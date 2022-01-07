
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * si; } ;
typedef TYPE_1__ surfaceExtra_t ;
typedef int shaderInfo_t ;


 TYPE_1__* GetSurfaceExtra (int) ;

shaderInfo_t *GetSurfaceExtraShaderInfo( int num ){
 surfaceExtra_t *se = GetSurfaceExtra( num );
 return se->si;
}

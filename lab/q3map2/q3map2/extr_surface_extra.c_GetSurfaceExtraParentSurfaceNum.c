
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parentSurfaceNum; } ;
typedef TYPE_1__ surfaceExtra_t ;


 TYPE_1__* GetSurfaceExtra (int) ;

int GetSurfaceExtraParentSurfaceNum( int num ){
 surfaceExtra_t *se = GetSurfaceExtra( num );
 return se->parentSurfaceNum;
}

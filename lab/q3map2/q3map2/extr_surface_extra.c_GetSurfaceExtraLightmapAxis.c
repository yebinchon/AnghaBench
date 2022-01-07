
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int lightmapAxis; } ;
typedef TYPE_1__ surfaceExtra_t ;


 TYPE_1__* GetSurfaceExtra (int) ;
 int VectorCopy (int ,int ) ;

void GetSurfaceExtraLightmapAxis( int num, vec3_t lightmapAxis ){
 surfaceExtra_t *se = GetSurfaceExtra( num );
 VectorCopy( se->lightmapAxis, lightmapAxis );
}

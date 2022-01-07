
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float zFar; float* projectionMatrix; } ;
typedef TYPE_1__ viewParms_t ;
struct TYPE_5__ {float value; } ;


 TYPE_2__* r_znear ;

void R_SetupProjectionZ(viewParms_t *dest)
{
 float zNear, zFar, depth;

 zNear = r_znear->value;
 zFar = dest->zFar;
 depth = zFar - zNear;

 dest->projectionMatrix[2] = 0;
 dest->projectionMatrix[6] = 0;
 dest->projectionMatrix[10] = -( zFar + zNear ) / depth;
 dest->projectionMatrix[14] = -2 * zFar * zNear / depth;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int numCubemaps; TYPE_1__* cubemaps; } ;
struct TYPE_4__ {int origin; } ;


 scalar_t__ DotProduct (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 scalar_t__ WORLD_SIZE ;
 TYPE_3__* r_cubeMapping ;
 TYPE_2__ tr ;

int R_CubemapForPoint( vec3_t point )
{
 int cubemapIndex = -1;

 if (r_cubeMapping->integer && tr.numCubemaps)
 {
  int i;
  vec_t shortest = (float)WORLD_SIZE * (float)WORLD_SIZE;

  for (i = 0; i < tr.numCubemaps; i++)
  {
   vec3_t diff;
   vec_t length;

   VectorSubtract(point, tr.cubemaps[i].origin, diff);
   length = DotProduct(diff, diff);

   if (shortest > length)
   {
    shortest = length;
    cubemapIndex = i;
   }
  }
 }

 return cubemapIndex + 1;
}

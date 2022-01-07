
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int normal; int color; int origin; } ;
typedef TYPE_1__ srfFlare_t ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {int fogNum; } ;


 int RB_AddFlare (TYPE_1__*,int ,int ,int ,int ) ;
 TYPE_3__* r_flares ;
 TYPE_2__ tess ;

__attribute__((used)) static void RB_SurfaceFlare(srfFlare_t *surf)
{
 if (r_flares->integer)
  RB_AddFlare(surf, tess.fogNum, surf->origin, surf->color, surf->normal);
}

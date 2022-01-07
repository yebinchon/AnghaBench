
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int flags; int frustum; } ;
struct TYPE_4__ {TYPE_1__ viewParms; } ;


 int R_CullPointAndRadiusEx (int const,float,int ,int) ;
 int VPF_FARPLANEFRUSTUM ;
 TYPE_2__ tr ;

int R_CullPointAndRadius( const vec3_t pt, float radius )
{
 return R_CullPointAndRadiusEx(pt, radius, tr.viewParms.frustum, (tr.viewParms.flags & VPF_FARPLANEFRUSTUM) ? 5 : 4);
}

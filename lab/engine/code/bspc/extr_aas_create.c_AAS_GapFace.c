
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int faceflags; int planenum; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_7__ {scalar_t__ phys_maxsteepness; int phys_gravitydirection; } ;
struct TYPE_6__ {int normal; } ;


 scalar_t__ DotProduct (int ,int ) ;
 int FACE_GROUND ;
 int FACE_SOLID ;
 int VectorCopy (int ,int ) ;
 int VectorInverse (int ) ;
 TYPE_3__ cfg ;
 TYPE_2__* mapplanes ;

int AAS_GapFace(tmp_face_t *tmpface, int side)
{
 vec3_t invgravity;


 if (tmpface->faceflags & (FACE_GROUND | FACE_SOLID)) return 0;

 VectorCopy(cfg.phys_gravitydirection, invgravity);
 VectorInverse(invgravity);

 return (DotProduct(invgravity, mapplanes[tmpface->planenum ^ side].normal) > cfg.phys_maxsteepness);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ vec3_t ;
struct TYPE_17__ {int faceflags; size_t planenum; } ;
typedef TYPE_3__ aas_face_t ;
struct TYPE_18__ {int numfaces; int firstface; } ;
typedef TYPE_4__ aas_area_t ;
struct TYPE_19__ {int* faceindex; TYPE_1__* planes; TYPE_3__* faces; TYPE_4__* areas; int loaded; } ;
struct TYPE_15__ {scalar_t__* normal; } ;


 scalar_t__ AAS_InsideFace (TYPE_3__*,TYPE_2__,TYPE_2__,float) ;
 int FACE_GROUND ;
 int VectorCopy (TYPE_2__,TYPE_2__) ;
 int VectorNegate (TYPE_2__,TYPE_2__) ;
 TYPE_5__ aasworld ;
 size_t abs (int) ;

aas_face_t *AAS_AreaGroundFace(int areanum, vec3_t point)
{
 int i, facenum;
 vec3_t up = {0, 0, 1};
 vec3_t normal;
 aas_area_t *area;
 aas_face_t *face;

 if (!aasworld.loaded) return ((void*)0);

 area = &aasworld.areas[areanum];
 for (i = 0; i < area->numfaces; i++)
 {
  facenum = aasworld.faceindex[area->firstface + i];
  face = &aasworld.faces[abs(facenum)];

  if (face->faceflags & FACE_GROUND)
  {

   if (aasworld.planes[face->planenum].normal[2] < 0) VectorNegate(up, normal);
   else VectorCopy(up, normal);

   if (AAS_InsideFace(face, normal, point, 0.01f)) return face;
  }
 }
 return ((void*)0);
}

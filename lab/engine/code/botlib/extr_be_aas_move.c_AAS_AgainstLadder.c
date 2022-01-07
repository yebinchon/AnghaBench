
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_7__ {scalar_t__ dist; int normal; } ;
typedef TYPE_2__ aas_plane_t ;
struct TYPE_8__ {int faceflags; int planenum; } ;
typedef TYPE_3__ aas_face_t ;
struct TYPE_9__ {int numfaces; int firstface; } ;
typedef TYPE_4__ aas_area_t ;
struct TYPE_10__ {int* faceindex; TYPE_2__* planes; TYPE_3__* faces; TYPE_4__* areas; TYPE_1__* areasettings; } ;
struct TYPE_6__ {int areaflags; int presencetype; } ;


 int AAS_PointAreaNum (int*) ;
 scalar_t__ AAS_PointInsideFace (size_t,int*,float) ;
 int AREA_LADDER ;
 scalar_t__ DotProduct (int ,int*) ;
 int FACE_LADDER ;
 int PRESENCE_NORMAL ;
 int VectorCopy (int*,int*) ;
 TYPE_5__ aasworld ;
 size_t abs (int) ;
 int fabsf (scalar_t__) ;
 int qfalse ;
 int qtrue ;

int AAS_AgainstLadder(vec3_t origin)
{
 int areanum, i, facenum, side;
 vec3_t org;
 aas_plane_t *plane;
 aas_face_t *face;
 aas_area_t *area;

 VectorCopy(origin, org);
 areanum = AAS_PointAreaNum(org);
 if (!areanum)
 {
  org[0] += 1;
  areanum = AAS_PointAreaNum(org);
  if (!areanum)
  {
   org[1] += 1;
   areanum = AAS_PointAreaNum(org);
   if (!areanum)
   {
    org[0] -= 2;
    areanum = AAS_PointAreaNum(org);
    if (!areanum)
    {
     org[1] -= 2;
     areanum = AAS_PointAreaNum(org);
    }
   }
  }
 }

 if (!areanum) return qfalse;

 if (!(aasworld.areasettings[areanum].areaflags & AREA_LADDER)) return qfalse;

 if (!(aasworld.areasettings[areanum].presencetype & PRESENCE_NORMAL)) return qfalse;

 area = &aasworld.areas[areanum];
 for (i = 0; i < area->numfaces; i++)
 {
  facenum = aasworld.faceindex[area->firstface + i];
  side = facenum < 0;
  face = &aasworld.faces[abs(facenum)];

  if (!(face->faceflags & FACE_LADDER)) continue;

  plane = &aasworld.planes[face->planenum ^ side];

  if (fabsf(DotProduct(plane->normal, origin) - plane->dist) < 3)
  {
   if (AAS_PointInsideFace(abs(facenum), origin, 0.1f)) return qtrue;
  }
 }
 return qfalse;
}

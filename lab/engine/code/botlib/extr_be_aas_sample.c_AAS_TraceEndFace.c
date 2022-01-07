
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t lastarea; int planenum; int endpos; scalar_t__ startsolid; } ;
typedef TYPE_2__ aas_trace_t ;
struct TYPE_11__ {int planenum; } ;
typedef TYPE_3__ aas_face_t ;
struct TYPE_12__ {int numfaces; int firstface; } ;
typedef TYPE_4__ aas_area_t ;
struct TYPE_13__ {int* faceindex; TYPE_1__* planes; TYPE_3__* faces; TYPE_4__* areas; int loaded; } ;
struct TYPE_9__ {int normal; } ;


 scalar_t__ AAS_InsideFace (TYPE_3__*,int ,int ,float) ;
 TYPE_5__ aasworld ;
 size_t abs (int) ;

aas_face_t *AAS_TraceEndFace(aas_trace_t *trace)
{
 int i, facenum;
 aas_area_t *area;
 aas_face_t *face, *firstface = ((void*)0);

 if (!aasworld.loaded) return ((void*)0);


 if (trace->startsolid) return ((void*)0);

 area = &aasworld.areas[trace->lastarea];

 for (i = 0; i < area->numfaces; i++)
 {
  facenum = aasworld.faceindex[area->firstface + i];
  face = &aasworld.faces[abs(facenum)];

  if ((face->planenum & ~1) == (trace->planenum & ~1))
  {
   if (AAS_InsideFace(face,
      aasworld.planes[face->planenum].normal, trace->endpos, 0.01f)) return face;
  }
 }
 return firstface;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int frontarea; int backarea; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_6__ {int numfaces; int firstface; } ;
typedef TYPE_2__ aas_area_t ;
struct TYPE_8__ {int * faceindex; TYPE_1__* faces; TYPE_2__* areas; } ;
struct TYPE_7__ {int valid; } ;


 TYPE_4__ aasworld ;
 size_t abs (int ) ;
 int* clusterareas ;
 TYPE_3__* midrangeareas ;
 size_t numclusterareas ;
 int qfalse ;

void AAS_AltRoutingFloodCluster_r(int areanum)
{
 int i, otherareanum;
 aas_area_t *area;
 aas_face_t *face;


 clusterareas[numclusterareas] = areanum;
 numclusterareas++;

 midrangeareas[areanum].valid = qfalse;

 area = &aasworld.areas[areanum];
 for (i = 0; i < area->numfaces; i++)
 {
  face = &aasworld.faces[abs(aasworld.faceindex[area->firstface + i])];

  if (face->frontarea == areanum) otherareanum = face->backarea;
  else otherareanum = face->frontarea;

  if (!otherareanum) continue;

  if (!midrangeareas[otherareanum].valid) continue;

  AAS_AltRoutingFloodCluster_r(otherareanum);
 }
}

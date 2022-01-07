
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_8__ {int planenum; struct TYPE_8__** next; TYPE_2__* backarea; TYPE_2__* frontarea; int * winding; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_9__ {TYPE_1__* tmpfaces; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_10__ {int normal; } ;


 int AAS_FreeTmpFace (TYPE_1__*) ;
 int AAS_RemoveFaceFromArea (TYPE_1__*,TYPE_2__*) ;
 int FreeWinding (int *) ;
 int * MergeWindings (int *,int *,int ) ;
 TYPE_3__* mapplanes ;

void AAS_MergePlaneFaces(tmp_area_t *tmparea, int planenum)
{
 tmp_face_t *face1, *face2, *nextface2;
 winding_t *neww;
 int side1, side2;

 for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
 {
  side1 = face1->frontarea != tmparea;
  if (face1->planenum != planenum) continue;

  for (face2 = face1->next[side1]; face2; face2 = nextface2)
  {
   side2 = face2->frontarea != tmparea;
   nextface2 = face2->next[side2];

   if ((face2->planenum & ~1) != (planenum & ~1)) continue;

   neww = MergeWindings(face1->winding, face2->winding,
        mapplanes[face1->planenum].normal);
   FreeWinding(face1->winding);
   face1->winding = neww;
   if (face2->frontarea) AAS_RemoveFaceFromArea(face2, face2->frontarea);
   if (face2->backarea) AAS_RemoveFaceFromArea(face2, face2->backarea);
   AAS_FreeTmpFace(face2);

   nextface2 = face1->next[side1];
  }
 }
}

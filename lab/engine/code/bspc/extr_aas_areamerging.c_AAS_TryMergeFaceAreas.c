
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int faceflags; TYPE_2__* backarea; TYPE_2__* frontarea; struct TYPE_15__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_16__ {scalar_t__ presencetype; scalar_t__ contents; scalar_t__ modelnum; int invalid; struct TYPE_16__* mergedarea; TYPE_1__* tmpfaces; } ;
typedef TYPE_2__ tmp_area_t ;


 int AAS_AddFaceSideToArea (TYPE_1__*,int,TYPE_2__*) ;
 TYPE_2__* AAS_AllocTmpArea () ;
 int AAS_CheckArea (TYPE_2__*) ;
 int AAS_FlipAreaFaces (TYPE_2__*) ;
 int AAS_FreeTmpFace (TYPE_1__*) ;
 scalar_t__ AAS_GapFace (TYPE_1__*,int) ;
 int AAS_RemoveFaceFromArea (TYPE_1__*,TYPE_2__*) ;
 int Error (char*) ;
 int FACE_GAP ;
 int FACE_GROUND ;
 scalar_t__ NonConvex (TYPE_1__*,TYPE_1__*,int,int) ;

int AAS_TryMergeFaceAreas(tmp_face_t *seperatingface)
{
 int side1, side2, area1faceflags, area2faceflags;
 tmp_area_t *tmparea1, *tmparea2, *newarea;
 tmp_face_t *face1, *face2, *nextface1, *nextface2;

 tmparea1 = seperatingface->frontarea;
 tmparea2 = seperatingface->backarea;


 if (tmparea1->presencetype != tmparea2->presencetype) return 0;

 if (tmparea1->contents != tmparea2->contents) return 0;

 if (tmparea1->modelnum != tmparea2->modelnum) return 0;

 area1faceflags = 0;
 area2faceflags = 0;
 for (face1 = tmparea1->tmpfaces; face1; face1 = face1->next[side1])
 {
  side1 = (face1->frontarea != tmparea1);

  if (face1->frontarea != tmparea1 &&
    face1->backarea != tmparea1) Error("face does not belong to area1");



  if ((face1->frontarea == tmparea1 &&
    face1->backarea == tmparea2) ||
    (face1->frontarea == tmparea2 &&
    face1->backarea == tmparea1)) continue;

  area1faceflags |= face1->faceflags;
  if (AAS_GapFace(face1, side1)) area1faceflags |= FACE_GAP;

  for (face2 = tmparea2->tmpfaces; face2; face2 = face2->next[side2])
  {
   side2 = (face2->frontarea != tmparea2);

   if (face2->frontarea != tmparea2 &&
     face2->backarea != tmparea2) Error("face does not belong to area2");



   if ((face2->frontarea == tmparea1 &&
     face2->backarea == tmparea2) ||
     (face2->frontarea == tmparea2 &&
     face2->backarea == tmparea1)) continue;

   area2faceflags |= face2->faceflags;
   if (AAS_GapFace(face2, side2)) area2faceflags |= FACE_GAP;

   if (NonConvex(face1, face2, side1, side2)) return 0;
  }
 }



 if (((area1faceflags & FACE_GROUND) && (area2faceflags & FACE_GAP)) ||
   ((area2faceflags & FACE_GROUND) && (area1faceflags & FACE_GAP)))
 {

  return 0;
 }







 newarea = AAS_AllocTmpArea();
 newarea->presencetype = tmparea1->presencetype;
 newarea->contents = tmparea1->contents;
 newarea->modelnum = tmparea1->modelnum;
 newarea->tmpfaces = ((void*)0);



 for (face1 = tmparea1->tmpfaces; face1; face1 = nextface1)
 {
  side1 = (face1->frontarea != tmparea1);
  nextface1 = face1->next[side1];

  if ((face1->frontarea == tmparea1 &&
    face1->backarea == tmparea2) ||
    (face1->frontarea == tmparea2 &&
    face1->backarea == tmparea1))
  {
   continue;
  }

  AAS_RemoveFaceFromArea(face1, tmparea1);
  AAS_AddFaceSideToArea(face1, side1, newarea);
 }


 for (face2 = tmparea2->tmpfaces; face2; face2 = nextface2)
 {
  side2 = (face2->frontarea != tmparea2);
  nextface2 = face2->next[side2];

  if ((face2->frontarea == tmparea1 &&
    face2->backarea == tmparea2) ||
    (face2->frontarea == tmparea2 &&
    face2->backarea == tmparea1))
  {
   continue;
  }

  AAS_RemoveFaceFromArea(face2, tmparea2);
  AAS_AddFaceSideToArea(face2, side2, newarea);
 }

 for (face1 = tmparea1->tmpfaces; face1; face1 = nextface1)
 {
  side1 = (face1->frontarea != tmparea1);
  nextface1 = face1->next[side1];

  AAS_RemoveFaceFromArea(face1, face1->frontarea);
  AAS_RemoveFaceFromArea(face1, face1->backarea);
  AAS_FreeTmpFace(face1);
 }

 tmparea1->mergedarea = newarea;
 tmparea1->invalid = 1;
 tmparea2->mergedarea = newarea;
 tmparea2->invalid = 1;

 AAS_CheckArea(newarea);
 AAS_FlipAreaFaces(newarea);

 return 1;
}

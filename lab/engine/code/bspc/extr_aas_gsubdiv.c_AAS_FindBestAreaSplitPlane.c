
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_7__ {int faceflags; int winding; TYPE_2__* frontarea; struct TYPE_7__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_8__ {int areanum; TYPE_1__* tmpfaces; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_9__ {int * phys_gravitydirection; } ;


 scalar_t__ AAS_GapFace (TYPE_1__*,int) ;
 int AAS_TestSplitPlane (TYPE_2__*,int *,float,int*,int*,int*) ;
 int FACE_GROUND ;
 int FindPlaneSeperatingWindings (int ,int ,int *,int *,float*) ;
 int Log_Print (char*,int,...) ;
 int Log_Write (char*,int,...) ;
 int VectorCopy (int *,int *) ;
 int VectorInverse (int *) ;
 scalar_t__ WindingIsTiny (int ) ;
 TYPE_3__ cfg ;

int AAS_FindBestAreaSplitPlane(tmp_area_t *tmparea, vec3_t normal, float *dist)
{
 int side1, side2;
 int foundsplitter, facesplits, groundsplits, epsilonfaces, bestepsilonfaces;
 float bestvalue, value;
 tmp_face_t *face1, *face2;
 vec3_t tmpnormal, invgravity;
 float tmpdist;


 VectorCopy(cfg.phys_gravitydirection, invgravity);
 VectorInverse(invgravity);

 foundsplitter = 0;
 bestvalue = -999999;
 bestepsilonfaces = 0;




 for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
 {

  side1 = face1->frontarea != tmparea;

  if (WindingIsTiny(face1->winding))
  {
   Log_Write("gsubdiv: area %d has a tiny winding\r\n", tmparea->areanum);
   continue;
  }

  if (!(face1->faceflags & FACE_GROUND) && !AAS_GapFace(face1, side1)) continue;

  for (face2 = face1->next[side1]; face2; face2 = face2->next[side2])
  {

   side2 = face2->frontarea != tmparea;

   if (WindingIsTiny(face1->winding))
   {
    Log_Write("gsubdiv: area %d has a tiny winding\r\n", tmparea->areanum);
    continue;
   }

   if (!(face2->faceflags & FACE_GROUND) && !AAS_GapFace(face2, side2)) continue;

   if (!(((face1->faceflags & FACE_GROUND) && AAS_GapFace(face2, side2)) ||
     ((face2->faceflags & FACE_GROUND) && AAS_GapFace(face1, side1)))) continue;

   if (!FindPlaneSeperatingWindings(face1->winding, face2->winding, invgravity,
              tmpnormal, &tmpdist)) continue;





   if (!AAS_TestSplitPlane(tmparea, tmpnormal, tmpdist,
          &facesplits, &groundsplits, &epsilonfaces))
   {
    continue;
   }




   value = 100 - facesplits - 2 * groundsplits;

   value += epsilonfaces * -1000;
   if (value > bestvalue)
   {
    VectorCopy(tmpnormal, normal);
    *dist = tmpdist;
    bestvalue = value;
    bestepsilonfaces = epsilonfaces;
    foundsplitter = 1;
   }
  }
 }
 if (bestepsilonfaces)
 {
  Log_Write("found %d epsilon faces trying to split area %d\r\n",
         epsilonfaces, tmparea->areanum);
 }
 return foundsplitter;
}

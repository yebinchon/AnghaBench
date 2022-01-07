
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* frontarea; TYPE_2__* backarea; struct TYPE_5__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_6__ {TYPE_1__* tmpfaces; scalar_t__ invalid; struct TYPE_6__* l_next; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_7__ {TYPE_2__* areas; } ;


 int AAS_FlipFace (TYPE_1__*) ;
 int Log_Write (char*,int) ;
 int qprintf (char*,...) ;
 TYPE_3__ tmpaasworld ;

void AAS_FlipSharedFaces(void)
{
 int i, side1, side2;
 tmp_area_t *tmparea1;
 tmp_face_t *face1, *face2;

 i = 0;
 qprintf("%6d areas checked for shared face flipping", i);
 for (tmparea1 = tmpaasworld.areas; tmparea1; tmparea1 = tmparea1->l_next)
 {
  if (tmparea1->invalid) continue;
  for (face1 = tmparea1->tmpfaces; face1; face1 = face1->next[side1])
  {
   side1 = face1->frontarea != tmparea1;
   if (!face1->frontarea || !face1->backarea) continue;

   for (face2 = face1->next[side1]; face2; face2 = face2->next[side2])
   {
    side2 = face2->frontarea != tmparea1;
    if (!face2->frontarea || !face2->backarea) continue;

    if (face1->frontarea == face2->backarea &&
     face1->backarea == face2->frontarea)
    {
     AAS_FlipFace(face2);
    }

    side2 = face2->frontarea != tmparea1;
   }
  }
  qprintf("\r%6d", ++i);
 }
 qprintf("\n");
 Log_Write("%6d areas checked for shared face flipping\r\n", i);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* backarea; TYPE_2__* frontarea; int winding; struct TYPE_7__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_8__ {TYPE_1__* tmpfaces; struct TYPE_8__* l_next; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_9__ {TYPE_2__* areas; } ;


 int AAS_FreeTmpFace (TYPE_1__*) ;
 int AAS_RemoveFaceFromArea (TYPE_1__*,TYPE_2__*) ;
 int Log_Write (char*,...) ;
 int WindingArea (int ) ;
 TYPE_3__ tmpaasworld ;

void AAS_RemoveTinyFaces(void)
{
 int side, num;
 tmp_face_t *face, *nextface;
 tmp_area_t *tmparea;


 Log_Write("AAS_RemoveTinyFaces\r\n");
 num = 0;
 for (tmparea = tmpaasworld.areas; tmparea; tmparea = tmparea->l_next)
 {
  for (face = tmparea->tmpfaces; face; face = nextface)
  {
   side = face->frontarea != tmparea;
   nextface = face->next[side];

   if (WindingArea(face->winding) < 1)
   {
    if (face->frontarea) AAS_RemoveFaceFromArea(face, face->frontarea);
    if (face->backarea) AAS_RemoveFaceFromArea(face, face->backarea);
    AAS_FreeTmpFace(face);

    num++;
   }
  }
 }
 Log_Write("%d tiny faces removed\r\n", num);
}

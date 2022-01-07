
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int winding; TYPE_2__* frontarea; struct TYPE_4__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_5__ {TYPE_1__* tmpfaces; struct TYPE_5__* l_next; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_6__ {TYPE_2__* areas; } ;


 int RemoveColinearPoints (int ) ;
 TYPE_3__ tmpaasworld ;

void AAS_RemoveAreaFaceColinearPoints(void)
{
 int side;
 tmp_face_t *face;
 tmp_area_t *tmparea;


 for (tmparea = tmpaasworld.areas; tmparea; tmparea = tmparea->l_next)
 {
  for (face = tmparea->tmpfaces; face; face = face->next[side])
  {
   side = face->frontarea != tmparea;
   RemoveColinearPoints(face->winding);

  }
 }
}

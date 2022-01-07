
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int faceflags; TYPE_2__* frontarea; struct TYPE_4__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_5__ {TYPE_1__* tmpfaces; } ;
typedef TYPE_2__ tmp_area_t ;


 int FACE_GROUND ;

int AAS_GroundArea(tmp_area_t *tmparea)
{
 tmp_face_t *face;
 int side;

 for (face = tmparea->tmpfaces; face; face = face->next[side])
 {
  side = (face->frontarea != tmparea);
  if (face->faceflags & FACE_GROUND) return 1;
 }
 return 0;
}

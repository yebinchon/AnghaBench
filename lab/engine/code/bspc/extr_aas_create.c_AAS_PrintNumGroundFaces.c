
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int faceflags; struct TYPE_3__* l_next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_4__ {TYPE_1__* faces; } ;


 int FACE_GROUND ;
 int qprintf (char*,int) ;
 TYPE_2__ tmpaasworld ;

void AAS_PrintNumGroundFaces(void)
{
 tmp_face_t *tmpface;
 int numgroundfaces = 0;

 for (tmpface = tmpaasworld.faces; tmpface; tmpface = tmpface->l_next)
 {
  if (tmpface->faceflags & FACE_GROUND)
  {
   numgroundfaces++;
  }
 }
 qprintf("%6d ground faces\n", numgroundfaces);
}

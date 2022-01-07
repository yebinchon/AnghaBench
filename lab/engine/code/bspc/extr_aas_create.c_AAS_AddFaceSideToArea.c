
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__** prev; struct TYPE_5__** next; TYPE_2__* frontarea; TYPE_2__* backarea; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_6__ {TYPE_1__* tmpfaces; } ;
typedef TYPE_2__ tmp_area_t ;


 int Error (char*) ;

void AAS_AddFaceSideToArea(tmp_face_t *tmpface, int side, tmp_area_t *tmparea)
{
 int tmpfaceside;

 if (side)
 {
  if (tmpface->backarea) Error("AAS_AddFaceSideToArea: already a back area\n");
 }
 else
 {
  if (tmpface->frontarea) Error("AAS_AddFaceSideToArea: already a front area\n");
 }

 if (side) tmpface->backarea = tmparea;
 else tmpface->frontarea = tmparea;

 if (tmparea->tmpfaces)
 {
  tmpfaceside = tmparea->tmpfaces->frontarea != tmparea;
  tmparea->tmpfaces->prev[tmpfaceside] = tmpface;
 }
 tmpface->next[side] = tmparea->tmpfaces;
 tmpface->prev[side] = ((void*)0);
 tmparea->tmpfaces = tmpface;
}

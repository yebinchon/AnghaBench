
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__** next; TYPE_1__** prev; TYPE_4__* frontarea; TYPE_4__* backarea; } ;
typedef TYPE_3__ tmp_face_t ;
struct TYPE_10__ {TYPE_2__* tmpfaces; } ;
typedef TYPE_4__ tmp_area_t ;
struct TYPE_8__ {TYPE_1__** prev; TYPE_4__* frontarea; } ;
struct TYPE_7__ {TYPE_2__** next; TYPE_4__* frontarea; } ;


 int Error (char*) ;

void AAS_RemoveFaceFromArea(tmp_face_t *tmpface, tmp_area_t *tmparea)
{
 int side, prevside, nextside;

 if (tmpface->frontarea != tmparea &&
   tmpface->backarea != tmparea)
 {
  Error("AAS_RemoveFaceFromArea: face not part of the area");
 }
 side = tmpface->frontarea != tmparea;
 if (tmpface->prev[side])
 {
  prevside = tmpface->prev[side]->frontarea != tmparea;
  tmpface->prev[side]->next[prevside] = tmpface->next[side];
 }
 else
 {
  tmparea->tmpfaces = tmpface->next[side];
 }
 if (tmpface->next[side])
 {
  nextside = tmpface->next[side]->frontarea != tmparea;
  tmpface->next[side]->prev[nextside] = tmpface->prev[side];
 }

 if (side) tmpface->backarea = ((void*)0);
 else tmpface->frontarea = ((void*)0);
 tmpface->prev[side] = ((void*)0);
 tmpface->next[side] = ((void*)0);
}

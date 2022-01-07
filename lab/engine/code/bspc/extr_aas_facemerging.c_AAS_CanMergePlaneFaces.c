
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int planenum; int faceflags; TYPE_2__* backarea; TYPE_2__* frontarea; struct TYPE_4__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_5__ {TYPE_1__* tmpfaces; } ;
typedef TYPE_2__ tmp_area_t ;



int AAS_CanMergePlaneFaces(tmp_area_t *tmparea, int planenum)
{
 tmp_area_t *frontarea, *backarea;
 tmp_face_t *face1;
 int side1, merge, faceflags;

 frontarea = backarea = ((void*)0);
 merge = 0;
 for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
 {
  side1 = face1->frontarea != tmparea;
  if ((face1->planenum & ~1) != (planenum & ~1)) continue;
  if (!frontarea && !backarea)
  {
   frontarea = face1->frontarea;
   backarea = face1->backarea;
   faceflags = face1->faceflags;
  }
  else
  {
   if (frontarea != face1->frontarea) return 0;
   if (backarea != face1->backarea) return 0;
   if (faceflags != face1->faceflags) return 0;
   merge = 1;
  }
 }
 return merge;
}
